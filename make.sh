#!/bin/bash
nb_parameter=$(echo $@ | wc -w)

if [ $nb_parameter -eq 1 ]
then 
    case $1 in
        all)
            mkdir -p build
            pandoc -F mermaid-filter cdc/cdc.md -o build/cdc.pdf
            crs=$(ls cr)
            for cr in $crs
            do 
                output=$(echo $cr |sed -e "s/.md/.pdf/g")
                pandoc -F mermaid-filter cr/$cr -o build/$output
            done
        ;;
        cr)
            mkdir -p build
            crs=$(ls cr)
            for cr in $crs
            do 
                output=$(echo $cr |sed -e "s/.md/.pdf/g")
                pandoc -F mermaid-filter cr/$cr -o build/$output
            done
        ;;
        cdc)
            mkdir -p build
            cd cdc
            pandoc --pdf-engine-opt=--enable-local-file-access -F mermaid-filter -t html --css=pandoc.css -c pandoc.css cdc.md -o ../build/cdc.pdf 
            cd ..
        ;;
        clean)
            rm -r -f build
            rm -f *.err
        ;;
        help)
            echo "all : Exporte tout au format pdf dans le dossier build"
            echo "cr : Exporte tous les comptes rendus au format pdf dans le dossier build"
            echo "cdc : Exporte le cahier des charges au format pdf dans le dossier build"
            echo "clean : Supprime le dossier build"
            echo "Pour plus d'aide, voir le README"
        ;;
        *)
            echo "La commande est inconnue, pour obtenir de l'aide : ./make.sh help"
        ;;
    esac
elif [ $nb_parameter -eq 0 ]
then 
    echo "Presque, mais vous avez oubliez un paramètre !"
else 
    echo "Oups, il y a trop de paramètres !"
fi
