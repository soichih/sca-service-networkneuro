#!/bin/bash

#this allows running this script locally (for development)
if [ -z $SERVICE_DIR ]; then export SERVICE_DIR=`pwd`; fi

#just in case..
rm -f finished

jobid=`qsub $SERVICE_DIR/submit.pbs`
echo $jobid > jobid

