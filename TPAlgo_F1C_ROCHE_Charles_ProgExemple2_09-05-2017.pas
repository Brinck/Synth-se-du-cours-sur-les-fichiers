//BUT : écrire un nom dans un fichier texte, ajouter un nouveau nom à la fin du fichier s'il y en a déjà un et permettre à l'utilisateur de lire le nom contenu dans le fichier texte ou non s'il le souhaite.
//ENTREE : un nom choisi par l'utilisateur et son choix de lire le fichier ou non.
//SORTIE : si l'utilisateur décide de lire le fichier, lit le ou les noms contenu(s) dans le fichier jusqu'à ce que le pointeur atteigne la fin du fichier.

program Fichiers_V2 (input, output);

uses crt;


//PROGRAMME PRINCIPAL

var
    f:TextFile;//ou Text
    nom:string;
    choix:char;
    s:string ;

BEGIN
    clrscr;

    writeln('Programme Fichiers');

    Assign(f,'init.txt'); //assignation
    Append(f); //ouverture du fichier en écriture + ajout(ne supprime pas le flux du fichier)
    writeln('Entrez un nom d''utilisateur :');
    readln(nom);

    nom:='Dernier utilisateur :'+nom;
    writeln(f,nom);//ecrit le nom dans le flux du fichier
    close(f);//ferme le fichier 

    writeln('voulez-vous lire le fichier ini.txt? [O/N]');
    choix:=ReadKey;

    if(upCase(choix)='O') then
        BEGIN
            Reset(f);//ouverture du fichier en lecture
            while not Eof(f) do //tant que ce n'est pas la fin du fichier
            begin
              ReadLn(f,s);//lit le nom dans le flux du fichier
              WriteLn(s);
            end;
            
            close(f)  //ferme le fichier     
        END;

    readln;


END.

