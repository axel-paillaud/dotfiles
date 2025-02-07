#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="printscreen-$TIMESTAMP.png"
SAVE_DIR="$HOME/Images/Captures d’écran"
FULL_PATH="$SAVE_DIR/$FILENAME"

# Créer le répertoire si nécessaire
mkdir -p "$SAVE_DIR"

# Prendre la capture d'écran avec `import` (ImageMagick)
if command -v import >/dev/null 2>&1; then
    import "$FULL_PATH" && notify-send "Capture d'écran" "Capture enregistrée : $FILENAME" || notify-send "Erreur" "Échec de la capture d'écran."
else
    notify-send "Erreur" "La commande 'import' n'est pas installée. Veuillez installer ImageMagick."
    exit 1
fi

