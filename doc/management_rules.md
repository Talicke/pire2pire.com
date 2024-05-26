# Regles de Gestion

## Formations

* Une formation doit avoir un intitulé unique.
* Une formation doit avoir une description.
* Une formation est composée d'un ou plusieurs modules.
* Une formation peut avoir 0 ou plusieurs apprenants.
* Une formation a un statut (en cours, disponible, archivé).

## Modules

* Un module doit avoir un intitulé unique.
* Un module doit avoir un objectif pédagogique.
* Un module doit avoir un ou plusieurs tags.
* Un module possède une position définie au sein d'une formation.
* Un module est composé d'une ou plusieurs leçons.
* Un module a un statut (en cours, disponible, archivé).

## Leçons

* Une Leçon doit avoir un intitulé unique.
* Une Leçon doit avoir une description.
* Une Leçon doit avoir une possède une position définie au sein d'un module.
* Une Leçon doit avoir un auteur unique.
* Une Leçon doit avoir au moins un contenu textuel.
* Une Leçon doit avoir au moins une image.
* Une Leçon doit contenir une vidéo.
* Une Leçon doit avoir une date de création.
* Une Leçon doit avoir une date de révision.
* Une Leçon peut être valider par un apprenant pour une formation.
* Une leçon a un statut (en cours, disponible, archivé).

## Utilisateurs

* Un utilisateur doit avoir un ID.
* Un utilisateur doit avoir un nom.
* Un utilisateur doit avoir un prénom.
* Un utilisateur doit avoir une adresse.
* Un utilisateur doit avoir une date de naissance.
* Un utilisateur doit avoir un rôles.

## Rôles

* Un rôle doit avoir un identifiant.
* Un rôle doit avoir un nom.
* Un rôle peut appartenir à 0 ou plusieurs utilisateurs.

## Rôle Formateur

* Un formateur peut créer une ou plusieurs formations.
* Un formateur peut modifier les formations qu’il a créé.
* Un formateur peut rendre une formation disponible ou pas.
* Un formateur doit avoir un code formateur.
* Un formateur peut créer 0 ou plusieurs modules.
* Un formateur peut modifier les modules qu’il a créés.
* Un formateur peut écrire 0 ou plusieurs cours.
* Un formateur peut modifier les leçons qu’il a écrit.

## Rôle Apprenant

* Un apprenant peut suivre 1 ou plusieurs formations.
* Un apprenant peut valider 0 ou plusieurs cours.
* Un apprenant peut avoir un numéro d’inscription.
* Un apprenant peut valider un module en complétant les différents cours.
* Un apprenant peut valider une formation en complétant les différents modules.

## Rôle visiteur

* Un visiteur peut s’inscrire en tant qu’apprenant.
* Un visiteur peut consulter la liste des formations.

## Rôle administrateur

* Un admin peut faire tout ce que fait un formateur
* Un admin peut faire tout ce que fait  un apprenant
* Un admin décide si un utilisateur est formateur.
* Un admin peut modifier tous les modules.
* Un admin peut modifier toutes les leçons.
* Un admin peut rendre une formation disponible ou pas.

## TAG

* Un tag a un ID.
* Un tag a un intitulé.
* Un tag peut appartenir à 0 ou plusieurs modules.
