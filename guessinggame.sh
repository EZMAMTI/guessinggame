#!/bin/bash

# Compter les fichiers du répertoire actuel
nb_fichiers=$(ls -1 | wc -l)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel."

while true
do
  read -p "Votre estimation : " guess

  # Vérifier que l'entrée est un nombre entier
  if ! [[ "$guess" =~ ^[0-9]+$ ]]
  then
    echo "Veuillez entrer un nombre entier."
  elif [ "$guess" -lt "$nb_fichiers" ]
  then
    echo "Trop bas, essayez encore."
  elif [ "$guess" -gt "$nb_fichiers" ]
  then
    echo "Trop élevé, essayez encore."
  else
    echo "Bravo ! Vous avez trouvé le bon nombre : $nb_fichiers fichiers."
    break
  fi
done