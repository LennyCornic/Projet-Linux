#!/bin/bash

menu_principal() {
    while true; do
        clear
        echo "===== SYSTEM CONTROL ====="
        echo "1) Surveillance système"
        echo "2) Maintenance"
        echo "3) Contrôle matériel"
        echo "4) Énergie"
        echo "0) Quitter"
        read -n 1 -p "Choix : " choice
        echo

        case $choice in
            1) menu_monitoring ;;
            2) menu_maintenance ;;
            3) menu_hardware ;;
            4) menu_power ;;
            0) menu_exit ;;
            *) echo "Choix invalide"; sleep 1 ;;
        esac
    done
}

menu_monitoring() {
    clear
    echo "1) Disque"
    echo "2) Mémoire"
    echo "3) Utilisateurs"
    echo "4) Processus"
    read -n 1 -p "Choix : " c
    echo
    case $c in
        1) show_disk_usage ;;
        2) show_memory_usage ;;
        3) show_users ;;
        4) show_processes ;;
    esac
    read -p "Entrée pour continuer..."
}

menu_maintenance() {
    clear
    echo "1) Sauvegarde"
    echo "2) Nettoyage /tmp"
    read -n 1 -p "Choix : " c
    echo
    case $c in
        1) backup_folder ;;
        2) clean_tmp ;;
    esac
    read -p "Entrée pour continuer..."
}

menu_hardware() {
    clear
    echo "1) Volume"
    echo "2) Mute"
    echo "3) Luminosité"
    echo "4) Scan WiFi"
    read -n 1 -p "Choix : " c
    echo
    case $c in
        1) set_volume ;;
        2) mute_volume ;;
        3) set_brightness ;;
        4) wifi_scan ;;
    esac
    read -p "Entrée pour continuer..."
}

menu_power() {
    clear
    echo "1) Veille"
    echo "2) Redémarrer"
    echo "3) Éteindre"
    read -n 1 -p "Choix : " c
    echo
    case $c in
        1) system_suspend ;;
        2) system_reboot ;;
        3) system_shutdown ;;
    esac
}

menu_exit() {
    echo "Au revoir 👋"
    exit 0
}

