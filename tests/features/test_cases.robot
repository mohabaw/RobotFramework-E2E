*** Settings ***
Resource        ../../resources/common.robot
Resource        ../../tests/stepsdefinition/parcoursE2E.robot
Resource        ../../tests/stepsdefinition/loginKO.robot

Suite Setup     Gérer la vitesse d'execution
Test Teardown   Tout fermer

*** Test Cases ***
Test de login KO
    [Tags]   LOGIN_KO
    Le client se rend sur la page d'accueil (firefox)
    loginKO.Le Client rentre ses identifiants (username invalide)
    Le client se retrouve avec un message d'erreur type sadface


Commander un produit - multinavigateurs
    [Template]    Commander un produit - multinavigateurs template
    firefox
    edge
    chrome

*** Keywords ***
Commander un produit - multinavigateurs template
    [Tags]    E2E
    [Arguments]    ${NAVIGATEUR}
    Le Client est authentifié (${NAVIGATEUR})
    L'utilisateur ajoute un produit au panier
    L'utilisateur passe au paiement
    La commande est validée
