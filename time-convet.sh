#!/bin/bash
# Convertir les secondes en jour(s) heure(s) minute(s) seconde(s)

minutes=$[$1/60]
 if [ $minutes > 60 ]; then
    echo expression evaluated as true
    heures=$[$1 / 3600]
    minutes=$[$minutes - ($heures * 60 )]
    if [ $heures > 24 ]; then
    	jours=$[$heures / 24]
    	heures=$[$heures - ($jours * 24 )]
    fi
 fi
 
secondes=$[$1 % 60] 
echo  le temps $1 secondes = $jours jours $heures heures $minutes minutes $secondes secondes
