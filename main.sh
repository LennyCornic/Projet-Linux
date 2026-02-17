#!/bin/bash

mkdir -p logs

# exec 1>>logs/actions.log
# exec 2>>logs/errors.log

source menu.sh
source monitoring.sh
source maintenance.sh
source hardware.sh
source power.sh

menu_principal

