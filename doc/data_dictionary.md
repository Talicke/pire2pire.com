# Dictionnaire de données

## Courses

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_course|Int|Identifiant unique de la formation|30|
|title_course| string |Intituler unique de la formation|Initiation GitHub|
|description_course|string|Description de la formation|Apprennez à utiliser GitHub en quelques minutes|
|status_course|string|Etat actuel de la formation|disponible|

## modules

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_module|int|Identifiant unique de la formation|20|
|title_module|string|Intituler unique de la formation|Cloner un repo|
|objectif_module|string|description de l'objectif pédagogique du module|récuperer votre code depuis gitHub|
|status_module|string|Etat actuel de la formation|En cours|

## lessons

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_lesson|int|Identifiant unique de la lesson|10|
|title_lesson|string|Intituler unique de la formation|ou trouver le lien|
|description_lesson|string|description de la leçon aborder|Trouver simplement le lien pour récuperer votre code|
|content_lesson|string|Contenu du cours| NA|
|image_lesson|string|url vers l'image d'illustration|NA|
|video_lesson|string|url vers la video explication du cours|NA|
|create_at_lesson|dateTime|Date de la création de la leçon|2024-05-26 01:00:00|
|review_at_lesson|dateTime|Date de la dernière révision du cours|2024-05-26 01:00:00|
|status_lesson|string|status du cours|archivé|

## tags

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_tags|int|identifiant unique du tags|12|
|title_tag|string|Intituler unique du tag|GIT|

## users

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_user|string| identifiant unique de l'utilisateur sous format UUID |123e4567-e89b-12d3-a456-426614174000|
|firstname_user|string|Prenom de l'utilisateur|Bob|
|lastname_user|string|nom de l'utilisateur|Durant|
|address_user|string|adresse de l'utilisateur|2 rue de la boustifaille 75000 Paris|
|birthdate_user|Date|Date de naissance de l'utilisateur|1980-12-01|

## roles

|Nom|Type|Signification|Exemple|
|:--|:------|:------------|:---|
|id_role|int|Identifiant unique du rôle|32|
|title_role|string|Intituler du rôle d'un utilisateur|student|
