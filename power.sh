#!/bin/bash

system_suspend() {
    sudo systemctl suspend
}

system_reboot() {
    read -p "Confirmer redémarrage ? (y/n) " c
    [ "$c" = "y" ] && sudo reboot
}

system_shutdown() {
    read -p "Confirmer extinction ? (y/n) " c
    [ "$c" = "y" ] && sudo shutdown now
}
