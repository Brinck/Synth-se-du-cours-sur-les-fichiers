//ALGORITHME : Fichier_V2 (input, output)
//BUT : écrire un nom dans un fichier texte, ajouter un nouveau nom à la fin du fichier s'il y en a déjà un et permettre à l'utilisateur de lire le nom contenu dans le fichier texte ou non s'il le souhaite.
//ENTREE : un nom choisi par l'utilisateur et son choix de lire le fichier ou non.
//SORTIE : si l'utilisateur décide de lire le fichier, lit le ou les noms contenu(s) dans le fichier jusqu'à ce que le pointeur atteigne la fin du fichier.

//PROGRAMME PRINCIPAL

VAR
    f:texte//ou Text
    nom:chaîne
    choix:caractère
    s:chaîne

DEBUT

    ECRIRE("Programme Fichiers")

    ASSIGNER(f,"init.txt") //assignation
    AJOUTER(f) //ouverture du fichier en écriture + ajout(ne supprime pas le flux du fichier)
    ECRIRE("Entrez un nom d''utilisateur :")
    LIRE(nom)

    nom<-"Dernier utilisateur :"&nom
    ECRIRE(f,nom)//ecrit le nom dans le flux du fichier
    FERMER(f)//ferme le fichier 

    ECRIRE("voulez-vous lire le fichier ini.txt? [O/N]")
    LIRE(choix)

    SI (choix="O") ALORS
        OUVRIR(f)//ouverture du fichier en lecture
        TANTQUE NON (Eof(f)) FAIRE //tant que ce n'est pas la fin du fichier
            LIRE(f,s)//lit le nom dans le flux du fichier
            ECRIRE(s)
        FINTANTQUE
            
        FERMER(f)  //ferme le fichier     
    FINSI

FIN