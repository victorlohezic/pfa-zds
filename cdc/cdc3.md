# Cahier des charges 

> [Documentation sur l'analyse fonctionnelle](https://fr.wikipedia.org/wiki/Analyse_fonctionnelle_(conception))

## Bête à cornes (qui permet d’exprimer la recherche du besoin.)

```mermaid
flowchart TB
    A[A qui rend-il service ? ]-->C;
    B[Sur quoi agit-il ?]-->C[Produit];
    C[Produit]-->D[Dans quel but ?];
```

## Diagramme Pieuvre (fonctions de service)


## Diagramme FAST [Documentation](https://fr.wikipedia.org/wiki/Function_analysis_system_technique)


```mermaid
flowchart LR
    A[Fonction de service 1]-->A1[Fonction Technique 1];
    A[Fonction de service 1]-->A2[Fonction Technique 2];

    A1[Fonction Technique 1]-->A11[Fonction Technique 11];
    A1[Fonction Technique 1]-->A12[Fonction Technique 12];
    A1[Fonction Technique 1]-->A13[Fonction Technique 13];

    A2[Fonction Technique 1]-->A21[Fonction Technique 21];
    A2[Fonction Technique 1]-->A22[Fonction Technique 22];

    A11[Fonction Technique 11]-->A11S[Solution A];
    A12[Fonction Technique 12]-->A12S[Solution B];
    A13[Fonction Technique 13]-->A13S[Solution C];

    A21[Fonction Technique 21]-->A21S[Solution D];
    A22[Fonction Technique 22]-->A22S[Solution E];

```