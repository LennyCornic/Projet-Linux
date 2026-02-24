#!/bin/bash

# Fonction de sauvegarde d'un dossier
backup_folder() {
    read -p "Entrez le chemin complet du dossier à sauvegarder : " folder_path
    
    if [ -d "$folder_path" ]; then
        # On crée un nom de fichier avec la date : backup_nom_20240520.tar.gz
        backup_name="backup_$(basename "$folder_path")_$(date +%Y%m%d_%H%M%S).tar.gz"
        
        echo "Compression en cours..."
        tar -czf "$backup_name" "$folder_path" 2>> logs/errors.log
        
        echo "Sauvegarde terminée : $backup_name"
    else
        echo "Erreur : Le dossier n'existe pas." >&2
    fi
    read -p "Appuyez sur Entrée pour continuer..."
}

# Fonction pour nettoyer les fichiers temporaires
clean_tmp() {
    echo "Nettoyage du dossier /tmp en cours..."
    # On demande confirmation car c'est une action destructive
    read -p "Voulez-vous vraiment supprimer les fichiers de /tmp ? (y/n) " confirm
    if [[ $confirm == "y" ]]; then
        # On supprime ce qui appartient à l'utilisateur actuel pour éviter les erreurs de droits
        rm -rf /tmp/* 2>> logs/errors.log
        echo "Nettoyage effectué."
    else
        echo "Action annulée."
    fi
    read -p "Appuyez sur Entrée pour continuer..."
}
backup_folder
