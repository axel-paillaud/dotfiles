#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="printscreen-$TIMESTAMP.png"
SAVE_DIR="$HOME/Images/Captures d’écran"
FULL_PATH="$SAVE_DIR/$FILENAME"

# Créer le répertoire si nécessaire
mkdir -p "$SAVE_DIR"

# Vérifier si la commande `import` est disponible
if ! command -v import >/dev/null 2>&1; then
    notify-send "Erreur" "La commande 'import' n'est pas installée. \
Veuillez installer ImageMagick."
    exit 1
fi

# Prendre la capture d'écran
if import "$FULL_PATH"; then
    notify-send "Capture d'écran" "Capture enregistrée : $FILENAME"
    paplay /usr/share/sounds/freedesktop/stereo/camera-shutter.oga &
else
    notify-send "Erreur" "Échec de la capture d'écran."
fi

