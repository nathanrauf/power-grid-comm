/*
 *  server_example_basic_io.c
 *
 *  - How to use simple control models
 *  - How to serve analog measurement data
 */

#include "hal_thread.h"
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

// Read the measurements file
void TextRead() {
  FILE *normfile = fopen("Measurements.txt", "r");

  i = 0;
  while (i < 2 * NUM_BUS) {
    if (fscanf(normfile, "%lf", &power_measurements[i++]) == 0) {
      printf("Error occured reading Measurements.txt\n");
      exit(1);
    }
  }

  fclose(normfile); /* close file */
}
// Writes to the Generation control file
void TextWrite() {
  FILE *normfile = fopen("gen_control.txt", "w");

  if (fprintf(normfile, "[%f %f; %f %f; %f %f; %f %f; %f %f]",
              generation_controls[0], generation_controls[1],
              generation_controls[2], generation_controls[3],
              generation_controls[4], generation_controls[5],
              generation_controls[6], generation_controls[7],
              generation_controls[8], generation_controls[9]) < 0) {
    printf("Error occured reading Measurements.txt\n");
    exit(1);
  }

  fclose(normfile); /* close file */
}

int main(int argc, char **argv) {
  printf("Using libIEC61850 version %s\n", LibIEC61850_getVersionString());

  iedServer = IedServer_create(&iedModel);

  /* Set the base path for the MMS file services */
  MmsServer mmsServer = IedServer_getMmsServer(iedServer);
  MmsServer_setFilestoreBasepath(mmsServer, "./vmd-filestore/");

  IedServer_setConnectionIndicationHandler(
      iedServer, (IedConnectionIndicationHandler)connectionHandler, NULL);

  /* MMS server will be instructed to start listening to client connections. */
  IedServer_start(iedServer, 102);

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

  while (running) {
    uint64_t timestamp = Hal_getTimeInMs();

    IedServer_lockDataModel(iedServer);

    // read text file and write them to LNs
    TextRead();
	printf("\n\n****************************************************\n");
    printf("Measurements.txt >>>\n");
    i = 0;
    while (i < 2 * NUM_BUS){
	if (i%2 == 0)
	      printf("      %i: %f", i, power_measurements[i++]);
	else
	      printf("      %i: %f\n", i, power_measurements[i++]);
	}
    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO1_AnOut1_subVal_f, power_measurements[0]);
    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO2_AnOut1_subVal_f, power_measurements[1]);

    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO3_AnOut1_subVal_f, power_measurements[2]);
    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO4_AnOut1_subVal_f, power_measurements[3]);

    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO5_AnOut1_subVal_f, power_measurements[4]);
    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO6_AnOut1_subVal_f, power_measurements[5]);

    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO7_AnOut1_subVal_f, power_measurements[6]);
    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO8_AnOut1_subVal_f, power_measurements[7]);

    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO9_AnOut1_subVal_f, power_measurements[8]);
    IedServer_updateFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO10_AnOut1_subVal_f, power_measurements[9]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO11_AnOut1_subVal_f,
                                        power_measurements[10]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO12_AnOut1_subVal_f,
                                        power_measurements[11]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO13_AnOut1_subVal_f,
                                        power_measurements[12]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO14_AnOut1_subVal_f,
                                        power_measurements[13]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO15_AnOut1_subVal_f,
                                        power_measurements[14]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO16_AnOut1_subVal_f,
                                        power_measurements[15]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO17_AnOut1_subVal_f,
                                        power_measurements[16]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO18_AnOut1_subVal_f,
                                        power_measurements[17]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO19_AnOut1_subVal_f,
                                        power_measurements[18]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO20_AnOut1_subVal_f,
                                        power_measurements[19]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO21_AnOut1_subVal_f,
                                        power_measurements[20]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO22_AnOut1_subVal_f,
                                        power_measurements[21]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO23_AnOut1_subVal_f,
                                        power_measurements[22]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO24_AnOut1_subVal_f,
                                        power_measurements[23]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO25_AnOut1_subVal_f,
                                        power_measurements[24]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO26_AnOut1_subVal_f,
                                        power_measurements[25]);

    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO27_AnOut1_subVal_f,
                                        power_measurements[26]);
    IedServer_updateFloatAttributeValue(iedServer,
                                        IEDMODEL_CTRL_GGIO28_AnOut1_subVal_f,
                                        power_measurements[27]);

    // Check the command coming from control center
    generation_controls[0] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO29_AnOut1_subVal_f);
    generation_controls[1] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO30_AnOut1_subVal_f);
    generation_controls[2] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO31_AnOut1_subVal_f);
    generation_controls[3] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO32_AnOut1_subVal_f);
    generation_controls[4] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO33_AnOut1_subVal_f);
    generation_controls[5] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO34_AnOut1_subVal_f);
    generation_controls[6] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO35_AnOut1_subVal_f);
    generation_controls[7] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO36_AnOut1_subVal_f);
    generation_controls[8] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO37_AnOut1_subVal_f);
    generation_controls[9] = IedServer_getFloatAttributeValue(
        iedServer, IEDMODEL_CTRL_GGIO38_AnOut1_subVal_f);

    printf("Generation Controls>>>\n");

    i = 0;
    while (i < NUM_GEN_CONTROLS) {
	if (i%2==0)
	      printf("      %i: %f", i, generation_controls[i++]);
	else
	      printf("      %i: %f\n", i, generation_controls[i++]);
    }

    TextWrite();
	printf("\n****************************************************\n\n");

    IedServer_unlockDataModel(iedServer);

    Thread_sleep(2000);
  }

  /* stop MMS server - close TCP server socket and all client sockets */
  IedServer_stop(iedServer);

  /* Cleanup - free all resources */
  IedServer_destroy(iedServer);

} /* main() */
