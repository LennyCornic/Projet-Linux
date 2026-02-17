#!/bin/bash

set_volume() {
    if command -v amixer >/dev/null; then
        read -p "Volume (0-100) : " v
        amixer set Master "$v"% 
    else
        echo "amixer non disponible"
    fi
}

mute_volume() {
    amixer set Master mute
}

set_brightness() {
    if command -v xbacklight >/dev/null; then
        read -p "Luminosité (0-100) : " b
        xbacklight -set "$b"
    else
        echo "xbacklight non disponible"
    fi
}

wifi_scan() {
    if command -v nmcli >/dev/null; then
        nmcli dev wifi list
    else
        echo "nmcli non disponible"
    fi
}

