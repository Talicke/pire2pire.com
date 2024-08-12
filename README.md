# pire2pire.com

## Introduction

Dans le cadre de ma certification CDA - DEVOPS, j'ai été chargé de réaliser la conception d'une base de données en utilisant la méthode MERISE. 
Ainsi que la réalisation des diagramme UML :

Ce repository contient la réalisation de ce projet, incluant :

- le modèles conceptuel des données
- le modèles logique des données
- le modèle physique des données
- Le diagramme de cas d'utilisation
- Le diargramme de classe
- Les diagrammes d'activité
- Les Diagrammes de Séquence

## M.E.R.I.S.E

Méthode d'étude et de réalisation informatique pour les systèmes d'entreprise

## U.M.L

L'UML (Unified Modeling Language) est un langage de modélisation visuel utilisé pour spécifier, visualiser, construire un système logiciel

## Sommaire

* [Règles de gestion](doc/management_rules.md)
* [Dictionnaire de données](doc/data_dictionary.md)
* [Modèle Conceptuel des Données (MCD)](doc/conceptual_data_model.md)
* [Modèle Logique des Données (MLD)](doc/logical_data_model.md)
* [Script SQL](doc/SQL.sql)
* [Diagramme de cas d'utilisation](doc/useCase_diagram.md)
* [Diagramme de class](doc/class_diagram.md)
* [Diagramme d'activité](doc/activity_diagram.md)
* [Diagramme séquence](doc/sequence_diagram.md)

## Instructions d'installation

1. **Installer PostgreSQL** : installez et configurez postgreSQL sur votre server :
[Documentation postgreSQL](https://www.postgresql.org/docs/current/)
1. **Executer le script** : executer le script SQL pour configurer la base de données :

```bash
psql -U [utilisateur] -h [hôte] -p [port] -d [nom_de_la_base_de_données] -f [chemin_vers_le_fichier_sql]
```

* utilisateur: Nom utilisateur utilisé pour se connecté à la BDD exemple : admin
* hôte : addresse de l'hôte ou se trouve la base de donnée exemple : localhost
* port : port par lequel lequel se connecté a l'hôte exemple : 5432
* nom de la base de données : Nom de la base de données sur laquel exécuter le script exemple : pire2pire
* chemin_vers_le_fichier_sql : URL vers le fichier à executer exemple : doc/SQL.sql
