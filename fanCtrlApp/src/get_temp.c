#include <stdio.h>
#include <stdlib.h>

#include <dbDefs.h>
#include <registryFunction.h>
#include <subRecord.h>
#include <epicsTypes.h>
#include <epicsTime.h>
#include <epicsExport.h>

float temp=0.0;

static long get_tempInit(struct subRecord *psub) {
    return 0;
}

static long get_temp(struct subRecord *psub) {
     char buf[256];
     FILE *fp = popen("echo 34.5", "r");

     fgets(buf, 255, fp);
     psub->val=atof(buf);
     pclose(fp);
     return(0);
}

epicsRegisterFunction(get_tempInit);
epicsRegisterFunction(get_temp);
