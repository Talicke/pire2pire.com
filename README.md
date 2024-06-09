# pire2pire.com

## Introduction

Dans le cadre de ma certification CDA - DEVOPS, j'ai été chargé de réaliser la conception d'une base de données en utilisant la méthode MERISE. Ce repository contient la réalisation de ce projet, incluant les modèles conceptuel, logique et physique des données.

## M.E.R.I.S.E

Méthode d'étude et de réalisation informatique pour les systèmes d'entreprise

## Sommaire

* [Règles de gestion](doc/management_rules.md)
* [Dictionnaire de données](doc/data_dictionary.md)
* [Modèle Conceptuel des Données (MCD)](doc/conceptual_data_model.md)
* [Modèle Logique des Données (MLD)](doc/logical_data_model.md)
* [Script SQL](doc/SQL.sql)

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
