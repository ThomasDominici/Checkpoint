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


4 - Quelles commandes git utiliser pour fusionner les branches **main** et **test_valide** ?  
Une fois que nous avons fini nos tests sur la branche secondaire (test_valide), nous allons verifier que nous sommes bien sur cette branche : 
```Bash
git log
```
Une fois que nous avons bien fait cette vérification et effectué nos ajouts : 
```Bash
git add
git commit -m "tests validés"
```

Nous pouvons effectuer la commande suivante : 
```Bash
git push origin main
```

Cela va permettre de push tous nos éléments de la branche **test_valide** vers la branch **main**.

5 - Pour afficher le texte de la question 5, la ligne de commande est la suivante : 
```Bash
echo -e 'Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :\n- "Bonjour est-ce que ce clavier fonctionne bien ?"\n- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\\\ !"\n- "Même des tildes ~ ?"\n- "Evidemment !"'
```
  
  
6 - Pour mettre en avant le processus **gedit**, la commande est la suivante : 
(n'étant pas sur de comprendre la question, je met deux possibilités ici)  
```Bash
fg %1
```V
Cette commande sert à mettre en avant gedit et le relancer s'il est en pause.
  
Ou sinon :
```Bash
renice 1 -p 37970
```
On met bien l'identifiant du processus, cette commande permet de le mettre en priorité 1.  


    
