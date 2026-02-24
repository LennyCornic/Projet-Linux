#!/bin/bash

# Fonction 1 : État du stockage
show_disk_usage() {
    clear
    echo "=========================================="
    echo "       UTILISATION DES DISQUES           "
    echo "=========================================="
    df -h --total | grep -E 'Filesystem|total'
    echo "=========================================="
    read -p "Appuyez sur Entrée pour continuer..."
}

# Fonction 2 : État de la mémoire vive (RAM)
show_memory_usage() {
    clear
    echo "=========================================="
    echo "         MÉMOIRE DU SYSTÈME             "
    echo "=========================================="
    free -h
    echo "=========================================="
    read -p "Appuyez sur Entrée pour continuer..."
}

# Fonction 3 : Qui est connecté ?
show_users() {
    clear
    echo "=========================================="
    echo "       UTILISATEURS CONNECTÉS            "
    echo "=========================================="
    who
    echo "=========================================="
    read -p "Appuyez sur Entrée pour continuer..."
}

# Fonction 4 : Top 10 des processus (CPU)
show_processes() {
    clear
    echo "=========================================="
    echo "       TOP 10 PROCESSUS (CPU)            "
    echo "=========================================="
    # Affiche les colonnes utilisateur, pid, %cpu, et le nom de la commande
    ps -eo user,pid,%cpu,comm --sort=-%cpu | head -n 11
    echo "=========================================="
    read -p "Appuyez sur Entrée pour continuer..."
}
