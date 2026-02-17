#!/bin/bash

backup_folder() {
    read -p "Dossier à sauvegarder : " folder
    if [ -d "$folder" ]; then
        name="backup_$(date +%Y%m%d_%H%M%S).zip"
        zip -r "$name" "$folder"
        echo "Sauvegarde créée : $name"
    else
        echo "Dossier invalide"
    fi
}

clean_tmp() {
    read -p "Confirmer nettoyage /tmp ? (y/n) " c
    if [ "$c" = "y" ]; then
        rm -rf /tmp/*
        echo "/tmp nettoyé"
    fi
}

