# PFA ZDS

## Généralité

Les comptes rendus sont disponibles sous le format Markdown dans le dossier `cr`.


Le cahier des charges est disponible sous le format Markdown dans le dossier `cdc`.

Pour afficher des diagrammes, on utilise [mermaid](https://mermaid-js.github.io/mermaid).

> Pour pouvoir les prévisualiser dans VSCode, vous pouvez télcharger l'[extension suivante](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid).

## Instalations
Pour pouvoir exporter le markdown en pdf, il est nécessaire d'avoir Pandoc et un filtre pour Mermaid. 

Installez pandoc 

```bash
sudo apt install pandoc -y
```

Installez mermaid-filter

```bash
npm i -g mermaid-filter
```

Installez pdf-latex

```bash
sudo apt-get -y install texlive-latex-recommended \
  texlive-pictures texlive-latex-extra texlive-fonts-recommended
```

## Exporter en PDF
Il suffit d'exécuter `make.sh` avec le bon paramètre. 

Pour les connaître, écrivez : `./make.sh help` dans votre terminal. Il faut être à la racine du projet. 

Les différents paramètres sont résumés dans ce tableau :
| Paramètre  |  Utilité |
| :--------------- | :-----|
| all  |     Exporte tout au format pdf dans le dossier `build` |
| cr  |     Exporte tous les comptes rendus au format pdf dans le dossier `build` |
| cdc  |     Exporte le cahier des charges au format pdf dans le dossier `build` |
| clean  |     Supprime le dossier `build` |


Par exemple, pour tout exporter en pdf, écrivez : 

```bash
./make.sh all
```

