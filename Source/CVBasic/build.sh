#!/bin/bash

export CVBASIC_HOME=/export/softs/cvbasic
export PATH=${CVBASIC_HOME}:${PATH}

tmscolor -b -p1 -z cv_logo.bmp cv_logo.bas
cvbasic splash.bas splash.asm ${CVBASIC_HOME}
gasm80 splash.asm -o splash.rom
bin2c splash.rom rom.h _actest

