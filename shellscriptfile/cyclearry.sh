#!/bin/bash
lst=("DWA_V_M_CUS_ALL_ZCTMF2" "bcd" "efes" "aa")
for x in ${lst[@]};do echo "./dsdgen -scale 300 -table $x -dir ~/table/" ;done 