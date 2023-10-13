1 - Une ligne de commande qui permet de lister les utilisateurs d'un système Linux est : 
```Bash
cat /etc/passwd
```
  

2 - La commande qui permet de changer les droits du fichier myfile est la suivante :
```Bash
sudo chmod 744 myfile
```
  
  
3 - Pour ne pas prendre en compte les fichiers **pdf** lors d'un **git push**, on peut créer un fichier **.gitignore**. Tous les noms mis dedans seront ignorés lors des push. Pour notre cas, nous pouvons inscrire dans ce fichier :
```Bash
*.pdf
```
Tous les pdf seront donc ignorés lors d'un push depuis notre git local.
