def time_string(seconds)
    # Calcule le nombre d'heures en divisant le nombre total de secondes par le nombre de secondes dans une heure (3600)
    hours = seconds / 3600
    
    # Calcule le nombre de minutes restantes en divisant le nombre total de secondes par le nombre de secondes dans une minute (60),
    # et en prenant le reste de la division par 60 pour obtenir le nombre de minutes restantes après avoir enlevé les heures entières
    minutes = (seconds / 60) % 60
    
    # Calcule le nombre de secondes restantes en prenant le reste de la division par 60
    seconds = seconds % 60
    
    # Utilise la fonction `format` pour formater les nombres d'heures, de minutes et de secondes avec des zéros en tête si nécessaire
    # et les concatène avec des deux-points pour former la chaîne de temps finale
    format("%02d:%02d:%02d", hours, minutes, seconds)
end
