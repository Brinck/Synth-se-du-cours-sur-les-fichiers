//BUT : écrire un nom dans un fichier texte, écraser l'ancien contenu du fichier s'il y en a un et permettre à l'utilisateur de lire le nom contenu dans le fichier texte ou non s'il le souhaite.
//ENTREE : un nom choisi par l'utilisateur et son choix de lire le fichier ou non.
//SORTIE : si l'utilisateur décide de lire le fichier, lit le nom contenu dans le fichier.
program Fichiers (input, output);

uses crt;


//PROGRAMME PRINCIPAL

var
    f:TextFile;//ou Text (Descripteur de fichier)
    nom:string;
    nomM:string;
    choix:char;

BEGIN
    clrscr;

    writeln('Programme Fichiers');

    Assign(f,'init.txt'); //assignation
    Rewrite(f);//ouverture en ecriture avec suppression du flux dans le fichier
    writeln('Entrez un nom d''utilisateur :');
    readln(nom);

    nom:='Dernier utilisateur :'+nom;
    writeln(f,nom); //écrit le nom dans le flux du fichier
    close(f); //ferme le fichier

    writeln('voulez-vous lire le fichier init.txt? [O/N]');
    choix:=ReadKey;

    if(upCase(choix)='O') then
        BEGIN
            Reset(f);//ouverture en lecture du fichier
            readln(f,nomM); //lit le nom dans le flux du fichier
            writeln(nomM);
            close(f); //ferme le fichier    
        END;

    readln;


END.