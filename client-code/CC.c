/*
 *  server_example_basic_io.c
 *
 *  - How to use simple control models
 *  - How to serve analog measurement data
 */

#include "hal_thread.h"
#include "iec61850_client.h"
#include "iec61850_server.h"
#include <math.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

#include "static_model.h"

#define NUM_BUS 14
#define NUM_GEN_CONTROLS 10

/* import IEC 61850 device model created from SCL-File */
extern IedModel iedModel;

static int running = 0;
static IedServer iedServer = NULL;

// Measurements
double power_measurements[2 * NUM_BUS];

// Generation controls
double generation_controls[NUM_GEN_CONTROLS];

int i = 0;

void sigint_handler(int signalId) { running = 0; }

static void connectionHandler(IedServer self, ClientConnection connection,
                              bool connected, void *parameter) {
  if (connected)
    printf("Connection opened\n");
  else
    printf("Connection closed\n");
}

// TextRead the gen controls to send over to OPAL
void TextRead() {
  FILE *normfile = fopen("gen_control.txt", "r");

  if (fscanf(normfile, "[%lf %lf; %lf %lf; %lf %lf; %lf %lf; %lf %lf]",
             &generation_controls[0], &generation_controls[1],
             &generation_controls[2], &generation_controls[3],
             &generation_controls[4], &generation_controls[5],
             &generation_controls[6], &generation_controls[7],
             &generation_controls[8], &generation_controls[9]) == 0) {
    printf("Error reading from gen_control.txt\n");
    exit(1);
  }

  fclose(normfile); /* close file */
}

void TextWrite() {
  FILE *normfile = fopen("Measurements.csv", "w");

  i = 1;
  while (i < 2 * NUM_BUS) {

    if (fprintf(normfile, "%lf,%lf\n", power_measurements[i-1],power_measurements[i]) < 0) {
      printf("Error writing to measurements.txt\n");
      exit(1);
    }
	i += 2;
  }

  fclose(normfile); /* close file */
}

int main(int argc, char **argv) {

  /////////////////
  // running server
  /////////////////

  printf("Using libIEC61850 version %s\n", LibIEC61850_getVersionString());

  iedServer = IedServer_create(&iedModel);

  /* Set the base path for the MMS file services */
  MmsServer mmsServer = IedServer_getMmsServer(iedServer);
  MmsServer_setFilestoreBasepath(mmsServer, "./vmd-filestore/");

  IedServer_setConnectionIndicationHandler(
      iedServer, (IedConnectionIndicationHandler)connectionHandler, NULL);

  /* MMS server will be instructed to start listening to client connections. */
  IedServer_start(iedServer, 103);

  if (!IedServer_isRunning(iedServer)) {
    printf("Starting server failed! Exit.\n");
    IedServer_destroy(iedServer);
    exit(-1);
  }

  running = 1;

  signal(SIGINT, sigint_handler);

  IedServer_setWriteAccessPolicy(iedServer, IEC61850_FC_DC,
                                 ACCESS_POLICY_ALLOW);
  IedServer_setWriteAccessPolicy(iedServer, IEC61850_FC_CF,
                                 ACCESS_POLICY_ALLOW);
  IedServer_setWriteAccessPolicy(iedServer, IEC61850_FC_SP,
                                 ACCESS_POLICY_ALLOW);
  IedServer_setWriteAccessPolicy(iedServer, IEC61850_FC_SV,
                                 ACCESS_POLICY_ALLOW);
  IedServer_setWriteAccessPolicy(iedServer, IEC61850_FC_SE,
                                 ACCESS_POLICY_ALLOW);

  ///////////////////////
  // Access to substation
  ///////////////////////

  char *hostname;
  int tcpPort = 102;

  if (argc > 1)
    hostname = argv[1];
  else
    // hostname = "localhost";
    hostname = "192.168.1.11"; // eth0

  if (argc > 2)
    tcpPort = atoi(argv[2]);

  IedClientError error;

  IedConnection con = IedConnection_create();

  IedConnection_connect(con, &error, hostname, tcpPort);

  while (running) {
    uint64_t timestamp = Hal_getTimeInMs();

    IedServer_lockDataModel(iedServer);

    // Read values from substation
    if (error == IED_ERROR_OK) {

      IedConnection_getServerDirectory(con, &error, false);

      // read all measurement value from server

      power_measurements[0] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO1.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[1] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO2.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[2] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO3.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[3] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO4.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[4] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO5.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[5] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO6.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[6] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO7.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[7] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO8.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[8] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO9.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[9] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO10.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[10] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO11.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[11] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO12.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[12] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO13.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[13] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO14.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[14] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO15.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[15] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO16.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[16] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO17.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[17] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO18.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[18] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO19.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[19] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO20.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[20] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO21.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[21] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO22.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[22] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO23.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[23] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO24.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[24] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO25.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[25] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO26.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[26] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO27.AnOut1.subVal.f", IEC61850_FC_SV);
      power_measurements[27] = IedConnection_readFloatValue(
          con, &error, "OSU_SS1CTRL/GGIO28.AnOut1.subVal.f", IEC61850_FC_SV);

      TextWrite();
	printf("\n\n*******************************************************\n");
      printf("Measurements.csv >>>\n");
      i = 0;
      while (i < 2 * NUM_BUS){
	if (i%2==0)
        	printf("      %i: %f", i, power_measurements[i++]);
	else
	        printf("      %i: %f\n", i, power_measurements[i++]);
	}
    } else {
      printf("Failed to connect to %s:%i\n", hostname, tcpPort);
    }

    // Get control from Matlab
    // read text file and write them to LNs
    TextRead();

    printf("Generation Controls>>>\n");
    i = 0;
    while (i < NUM_GEN_CONTROLS) {

	if (i%2==0)
	      	printf("      %i: %f", i, generation_controls[i++]);
	else
      		printf("      %i: %f\n", i, generation_controls[i++]);


    }
	printf("\n*******************************************************\n\n");

    // Write Generation controls
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO29.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[0]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO30.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[1]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO31.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[2]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO32.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[3]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO33.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[4]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO34.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[5]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO35.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[6]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO36.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[7]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO37.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[8]);
    IedConnection_writeFloatValue(con, &error,
                                  "OSU_SS1CTRL/GGIO38.AnOut1.subVal.f",
                                  IEC61850_FC_SV, generation_controls[9]);

    if (error != IED_ERROR_OK)
      printf("failed to write OSU_SS1CTRL/GGIO3.AnOut1.subVal.f!\n");

    IedServer_unlockDataModel(iedServer);

    Thread_sleep(2000);
  }

close_connection:
  IedConnection_close(con);
  IedConnection_destroy(con);

  /* stop MMS server - close TCP server socket and all client sockets */
  IedServer_stop(iedServer);

  /* Cleanup - free all resources */
  IedServer_destroy(iedServer);

} /* main() */
