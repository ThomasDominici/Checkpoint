Pour cette exercice, nous avons en premier lieu prit le contrôle de notre machine Debian par SSH comme le montre l'image ci-dessous : 
![image1](https://github.com/ThomasDominici/Checkpoint/blob/main/Ressources_Screens/prisecontroledebian.JPG?raw=true)

Nous avons ensuite découpé notre disque /dev/sdb en deux partitions. Pour cela, étant en root, nous n'avons pas eu besoin de la comande sudo pour le reste de l'exercice. 
Nous avons donc utilisé la commande **fdisk -l** pour voir les disques et vérifier que /dev/sdb était bien existant.
```Bash
fdisk -l 
```

Puis nous avons créé une partition de 6 GO et une de 4 GO :
```Bash
cfdisk /dev/sdb
```

Nous avons choisi le format suivant (dos) : 

![image2](https://github.com/ThomasDominici/Checkpoint/blob/main/Ressources_Screens/choixpartitions.JPG?raw=true)

Puis nous avons créé nos partitions en changeant bien le type de partition pour sdb2. Cette partition va devenir notre nouvelle partition swap.

![image3](https://github.com/ThomasDominici/Checkpoint/blob/main/Ressources_Screens/decoupagepartition.JPG?raw=true)

Nous avons par la suite formaté nos partitions avec les commandes suivantes : 
```Bash
mkfs.ext4 -L DATA /dev/sdb1
mkswap /dev/sdb2
```

Ensuite, il y a eu activation de notre partition swap en prenant soin de désactiver la partition swap /dev/sda5 avant : 
```Bash
swapoff /dev/sda5
swapon /dev/sdb2
```


