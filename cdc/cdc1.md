# Cahier des charges Module de recherche

> [Documentation sur l'analyse fonctionnelle](https://fr.wikipedia.org/wiki/Analyse_fonctionnelle_(conception))

## Bête à cornes (qui permet d’exprimer la recherche du besoin.)

```mermaid
flowchart TB
    A[A qui rend-il service ? Les utilisateurs ]-->C;
    B[Sur quoi agit-il ? Les données]-->C[Module de recherche];
    C[Produit]-->D[Dans quel but ? Rechercher du contenu de manière rapide et pertinente à parti de mot-clés];
```

## Diagramme Pieuvre (fonctions de service)

```mermaid
flowchart TB
    FP1[Utilisateur]--FP ---C;
    FP2[Contenus]--FP2 ---C;
    A[Membres]--FC1 ---C;
    B[Articles]--FC2 ---C[Module de recherche];
    C[Module de recherche]--FC3 ---D[Messages du forum];
    C[Module de recherche]--FC4 ---E[Sujet du forum];
    C[Module de recherche]--FC5 ---F[Sécurite];
    C[Module de recherche]--FC6 ---G[Coût];
    C[Module de recherche]--FC7 ---H[Filtres];
    C[Module de recherche]--FC8 ---I[Synonymes];
```

| Id fonction  | Explication          | 
| :--------------- |:---------------:| 
| FC1  |   Rechercher un membre        | 
| FC2  |   Rechercher un article        | 
| FC3  |   Rechercher un message de forum        | 
| FC4  |   Rechercher un sujet de forum       | 
| FC5  |   Utiliser les dernières versions du module pour éviter des failles      | 
| FC6  |  Minimiser les coûts de l'hébergeur   | 
| FC7  |  Filtrer les résultats   | 
| FC8  |  Ignorer certains mots dans la pertinence des résultats de la recherche   | 
| FC9  |  Créer des synonymes pour une meilleure recherche| 
| FC10  |  Configurer le module de recherche de manière simple et intuitive | 


## Diagramme FAST [Documentation](https://fr.wikipedia.org/wiki/Function_analysis_system_technique)


```mermaid
flowchart TB
    FS1[Fonction de service 1]-->FT1[Explorer les contenus];

    FT1[Explorer les contenus]-->FT11[Indiquer le contenu à parcourir];

    FS1[FS1 : Rechercher une information grâce à des mots clés et obtenir un résulat pertinant et rapidement]-->FT2[Traitement des données classement par pertinence];

    FT2[Traitement des données classement par pertinence]-->FT21[Classer selon des critères];
    FT21[Classer selon des critères]-->FT211[Vérifier la présence des mot-clé];
    FT21[Classer selon des critères]-->FT212[Vérifier la présence de synonymes];
    FT21[Classer selon des critères]-->FT213[Vérifier la fréquence des mot-clés];
    FT21[Classer selon des critères]-->FT214[Vérifier l'emplacement du mot-clé dans le contenu];
    FT21[Classer selon des critères]-->FT215[Vérifier la popularité du contenu];

    FS1[FS1 : Rechercher une information grâce à des mots clés et obtenir un résulat pertinant et rapidement]-->FT3[Indexer le contenu];

    FT3[Indexer le contenu]-->FT31[Catégoriser le contenu];

    FS1[FS1 : Rechercher une information grâce à des mots clés et obtenir un résulat pertinant et rapidement]-->FT4[Afficher les résultats];

    FT4[Afficher les résultats]-->FT41[Afficher les résultats selon l'ordre de pertinence];

    
    FT11[Indiquer le contenu à parcourir]-->S[Moteur de recherche];

    FT211[Vérifier la présence des mot-clé]-->S[Moteur de recherche];

    FT212[Vérifier la présence de synonymes]-->S[Moteur de recherche];

    FT213[Vérifier la fréquence des mot-clés]-->S[Moteur de recherche];

    FT214[Vérifier l'emplacement du mot-clé dans le contenu]-->S[Moteur de recherche];

    FT215[Vérifier la popularité du contenu]-->S[Moteur de recherche];

    FT41[Afficher les résultats selon l'ordre de pertinence]-->S[Moteur de recherche];
```