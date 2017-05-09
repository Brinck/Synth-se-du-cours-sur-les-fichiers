//ALGORITHME : Fichiers (input, output)
//BUT : écrire un nom dans un fichier texte, écraser l'ancien contenu du fichier s'il y en a un et permettre à l'utilisateur de lire le nom contenu dans le fichier texte ou non s'il le souhaite.
//ENTREE : un nom choisi par l'utilisateur et son choix de lire le fichier ou non.
//SORTIE : si l'utilisateur décide de lire le fichier, lit le nom contenu dans le fichier.

//PROGRAMME PRINCIPAL

VAR
    f:texte//ou Text (Descripteur de fichier)
    nom:chaîne
    nomM:chaîne
    choix:caractère

DEBUT
    ECRIRE("Programme Fichiers")

    ASSIGNER(f,"init.txt") //assignation
    REECRIRE(f)//ouverture en ecriture avec suppression du flux dans le fichier
    ECRIRE("Entrez un nom d''utilisateur :")
    LIRE(nom)

    nom<-"Dernier utilisateur :"&nom
    ECRIRE(f,nom) //écrit le nom dans le flux du fichier
    FERMER(f) //ferme le fichier

    ECRIRE("voulez-vous lire le fichier init.txt? [O/N]")
    LIRE(choix)

    SI(choix="O") ALORS
        OUVRIR(f)//ouverture en lecture du fichier
        LIRE(f,nomM) //lit le nom dans le flux du fichier
        ECRIRE(nomM)
        FERMER(f) //ferme le fichier    
    FINSI
FIN