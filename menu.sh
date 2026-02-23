#!/bin/bash

pause() {
  echo ""
  read -p "Appuyez sur Entree..."
}

menu_monitoring() {
  while true; do
    clear
    echo "--- MONITORING ---"
    echo "1.Disque 2.RAM 3.Users 4.Process r.Retour"
    read -n 1 c; echo ""
    case $c in
      1) show_disk_usage; pause ;;
      2) show_memory_usage; pause ;;
      3) show_users; pause ;;
      4) show_processes; pause ;;
      r) return ;;
    esac
  done
}

menu_maintenance() {
  while true; do
    clear
    echo "--- MAINTENANCE ---"
    echo "1.Backup 2.Clean_tmp r.Retour"
    read -n 1 c; echo ""
    case $c in
      1) backup_folder; pause ;;
      2) clean_tmp; pause ;;
      r) return ;;
    esac
  done
}

menu_hardware() {
  while true; do
    clear
    echo "--- HARDWARE ---"
    echo "1.Vol 2.Mute 3.Lum 4.Wifi_scan 5.Wifi_co r.Retour"
    read -n 1 c; echo ""
    case $c in
      1) set_volume; pause ;;
      2) mute_volume; pause ;;
      3) set_brightness; pause ;;
      4) wifi_scan; pause ;;
      5) wifi_connect; pause ;;
      r) return ;;
    esac
  done
}

menu_power() {
  while true; do
    clear
    echo "--- POWER ---"
    echo "1.Veille 2.Reboot 3.Shutdown r.Retour"
    read -n 1 c; echo ""
    case $c in
      1) system_suspend; pause ;;
      2) system_reboot; pause ;;
      3) system_shutdown; pause ;;
      r) return ;;
    esac
  done
}

menu_principal() {
  while true; do
    clear
    echo "=== MENU PRINCIPAL ==="
    echo "1. Monitoring"
    echo "2. Maintenance"
    echo "3. Hardware"
    echo "4. Power"
    echo "q. Quitter"
    read -n 1 c
    case $c in
      1) menu_monitoring ;;
      2) menu_maintenance ;;
      3) menu_hardware ;;
      4) menu_power ;;
      q) clear; exit 0 ;;
    esac
  done
}
