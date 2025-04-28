*** Settings ***
Resource    ./../pagefactory/accueil.robot
Resource    ./../pagefactory/checkout_info.robot
Resource    ./../pagefactory/checkout_final.robot
Resource    ./../pagefactory/checkout_overview.robot
Resource    ./../pagefactory/panier.robot

*** Keywords ***
Le client se rend sur la page d'accueil
     accueil.Le client se rend sur la page d'Accueil (firefox)

Le Client rentre ses identifiants (username invalide)
    accueil.Le Client rentre le username erroné
    accueil.Le Client rentre le mot de passe
    accueil.Le Client valide ses identifiants

Le client se retrouve avec un message d'erreur type sadface
    accueil.Verifier que le Client reste sur l'Acceuil suite erreur
