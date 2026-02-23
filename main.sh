#!/bin/bash

mkdir -p logs

exec > >(tee -a logs/actions.log) 2> >(tee -a logs/errors.log)

source menu.sh
source monitoring.sh 
source maintenance.sh
source hardware.sh
source power.sh

menu_principal
