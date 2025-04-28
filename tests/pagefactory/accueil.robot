*** Settings ***
Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot


*** Keywords ***

Le Client s'authentifie (${NAVIGATEUR})
    Le client se rend sur la page d'Accueil (${NAVIGATEUR})
    Le Client rentre le username
    Le Client rentre le mot de passe
    Le Client valide ses identifiants

Le client se rend sur la page d'Accueil (${NAVIGATEUR})
    SeleniumLibrary.Open browser
    ...    url=${SITE_URL}  
    ...    browser=${NAVIGATEUR}
    Maximize Browser Window
    Log to console    Je suis sur la page d'accueil
    Log    Je suis sur la page d'accueil

Le client se rend sur la page d'Accueil -firefox-
    SeleniumLibrary.Open browser
    ...    url=${SITE_URL}  
    ...    browser=firefox
    Maximize Browser Window
    Log to console    Je suis sur la page d'accueil
    Log    Je suis sur la page d'accueil

Le Client rentre le username
     SeleniumLibrary.Input text    ${USERNAME_FIELD}    ${USERNAME}  
                                                               
Le Client rentre le username erroné
     SeleniumLibrary.Input text    ${USERNAME_FIELD}    ${USERNAME_ERRONE}  

Le Client rentre le mot de passe
    SeleniumLibrary.Input text    ${PWD_FIELD}    ${PWD}   
                                                          
Le Client valide ses identifiants
    SeleniumLibrary.Click element      ${LOGIN_BUTTON}

Verifier que le Client reste sur l'Acceuil suite erreur
    SeleniumLibrary.Page should contain    Epic sadface
    Log to console    On est resté sur la page d'acceuil avec un message d'erreur affiché
    Log     On est resté sur la page d'acceuil avec un message d'erreur affiché


