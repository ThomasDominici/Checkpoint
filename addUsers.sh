#! /bin/bash

# Script automatique de création d'utilisateurs multiples.

# Vérification si les variables sont vides 
if [ -z $1 ]
then
	echo "Il manque le nom des utilisateurs en argument - Fin du script "
	exit 1
else 
	if cat /etc/passwd | grep $1 > /dev/null
	then
		echo " L'utilisateur $1 existe déjà "
		
	else
		#Création d'utilisateur
		useradd $1
		cat /etc/passwd | grep $1 > /dev/null && echo "L'utilisateur $1 a été créé "
		
	fi
fi

# Vérification si les variables sont vides 
if [ -z $2 ]
then
	echo "Il manque le nom des utilisateurs 2 et 3 en argument - Fin du script "
	exit 1
else 
	if cat /etc/passwd | grep $2 > /dev/null
	then
		echo " L'utilisateur $2 existe déjà "
	
	else
		#Création d'utilisateur
		useradd $2
		cat /etc/passwd | grep $2 > /dev/null && echo "L'utilisateur $2 a été créé "
		
	fi
fi

# Vérification si les variables sont vides 
if [ -z $3 ]
then
	echo "Il manque le nom de l'utilisateur 3 en argument - Fin du script "
	exit 1
else 
	if cat /etc/passwd | grep $3 > /dev/null
	then
		echo " L'utilisateur $3 existe déjà "
		
	else
		#Création d'utilisateur
		useradd $3
		cat /etc/passwd | grep $3 > /dev/null && echo "L'utilisateur $3 a été créé "
		
	fi
fi
exit
