
/*
 * client_example1.c
 *
 * This example is intended to be used with server_example3 or
 * server_example_goose.
 */

#include "hal_thread.h"
#include "iec61850_client.h"
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#define NUM_BUS 14

typedef unsigned int uint;

void reportCallbackFunction(void *parameter, ClientReport report) {
  MmsValue *dataSetValues = ClientReport_getDataSetValues(report);

  printf("received report for %s\n", ClientReport_getRcbReference(report));

  int i;
  for (i = 0; i < 4; i++) {
    ReasonForInclusion reason = ClientReport_getReasonForInclusion(report, i);

    if (reason != IEC61850_REASON_NOT_INCLUDED) {
      printf("  GGIO1.SPCSO%i.stVal: %i (included for reason %i)\n", i,
             MmsValue_getBoolean(MmsValue_getElement(dataSetValues, i)),
             reason);
    }
  }
}

double power_measurements[2 * NUM_BUS];

int main(int argc, char **argv) {

  char *hostname;
  int tcpPort = 102;

  if (argc > 1)
    hostname = argv[1];
  else
    hostname = "192.168.1.11";

  if (argc > 2)
    tcpPort = atoi(argv[2]);

  IedClientError error;

  IedConnection con = IedConnection_create();

  IedConnection_connect(con, &error, hostname, tcpPort);

  while (1) {
    // Randomly change a measurement value by +/- 25%
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

    int i = 0;
    while (i < 2 * NUM_BUS) {
      int random_num = rand();
      if (random_num % 2 == 0)
        power_measurements[i++] = 1.25 * power_measurements[i];
      else
        power_measurements[i++] = 0.75 * power_measurements[i];
    }

    if (error == IED_ERROR_OK) {

      IedConnection_getServerDirectory(con, &error, false);

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO1.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[0]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO2.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[1]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO3.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[2]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO4.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[3]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO5.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[4]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO6.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[5]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO7.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[6]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO8.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[7]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO9.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[8]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO10.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[9]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO11.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[10]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO12.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[11]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO13.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[12]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO14.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[13]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO15.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[14]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO16.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[15]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO17.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[16]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO18.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[17]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO19.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[18]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO20.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[19]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO21.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[20]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO22.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[21]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO23.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[22]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO24.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[23]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO25.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[24]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO26.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[25]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO27.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[26]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      IedConnection_writeFloatValue(con, &error,
                                    "OSU_SS1CTRL/GGIO28.AnOut1.subVal.f",
                                    IEC61850_FC_SV, power_measurements[27]);
      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

      printf("WROTE BAD VALUES TO MEASUREMENTS\n");

      if (error != IED_ERROR_OK)
        printf("failed to write float value!\n");

    } else {
      printf("Failed to connect to %s:%i\n", hostname, tcpPort);
    }
    printf("\n********************* SLEEPING *********************\n");
    Thread_sleep(100);
  }
close_connection:

  IedConnection_close(con);
  IedConnection_destroy(con);
}
