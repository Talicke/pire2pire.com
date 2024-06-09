# Dictionnaire de données

Un dictionnaire de données est un document essentiel en informatique qui détaille les descriptions de toutes les données utilisées dans un système d'information. Il inclut des informations sur les entités (tables), les attributs (champs), les types de données, et un exemple. Ce document sert de référence pour les développeurs, les analystes de données et les administrateurs système afin de garantir la cohérence, l'intégrité et la compréhension des données à travers l'ensemble de l'application. En facilitant la communication et la standardisation des termes, un dictionnaire de données améliore l'efficacité du développement et de la gestion des données.

## Courses

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_course|INT|Identifiant unique de la formation|30|
|title_course| VARCHAR |Intituler unique de la formation|Initiation GitHub|
|description_course|VARCHAR|Description de la formation|Apprennez à utiliser GitHub en quelques minutes|

## Modules

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_module|INT|Identifiant unique du module|20|
|title_module|VARCHAR|Intituler unique du module |Cloner un repository|
|objectif_module|VARCHAR|Description de l'objectif pédagogique du module|Récuperez votre code depuis gitHub|

## lessons

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_lesson|INT|Identifiant unique de la lesson|10|
|title_lesson|VARCHAR|Intituler unique de la leçon|Ou trouver le lien|
|description_lesson|VARCHAR|Description de la leçon abordé|Trouver simplement le lien pour récuperer votre code|
|content_lesson|VARCHAR|Contenu du cours| NA|
|image_lesson|VARCHAR|URL vers l'image d'illustration|NA|
|video_lesson|VARCHAR|URL vers la vidéo explication du cours|NA|
|create_at_lesson|DATETIME|Date de la création de la leçon|2024-05-26 01:00:00|
|review_at_lesson|DATETIME|Date de la dernière révision du cours|2024-05-26 01:00:00|

## tags

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|title_tag|VARCHAR|Intituler unique du tag|GIT|

## status

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|title_status|VARCHAR|Intituler unique du status|disponible|

## users

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_user|VARCHAR| identifiant unique de l'utilisateur sous format UUID |123e4567-e89b-12d3-a456-426614174000|
|firstname_user|VARCHAR|Prenom de l'utilisateur|Bob|
|lastname_user|VARCHAR|Nom de l'utilisateur|Durant|
|birthdate_user|DATE|Date de naissance de l'utilisateur|1980-12-01|

## adress

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_adress|INT|Identifiant unique de l'adress |3|
|number_adress|VARCHAR|Numero de rue de l'adresse|2 bis|
|road_adress|VARCHAR|Nom de la voie de l'adresse|rue de la boustifaille|

## city

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_city|INT|Identifiant unique de la ville|1|
|name_city|VARCHAR|Nom de la ville|Paris|

## zipcode

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|code|INT|Code postal unique|75000|

## roles

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|title_role|VARCHAR|Intituler unique du rôle d'un utilisateur|student|

[Retour au menu](../README.md)
