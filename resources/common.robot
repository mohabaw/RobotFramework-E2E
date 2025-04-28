*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Nettoyer Workspace
    [Documentation]    Supprime tout le contenu du dossier workspace
    OperatingSystem.Remove Directory    workspace    recursive=True
    OperatingSystem.Create Directory    workspace
    Log    Workspace nettoyé.
    Log To Console     Workspace nettoyé.

Gérer la vitesse d'execution
    [Documentation]    Gére la vitesse d'execution du script pour mieux observer le comportement
    Set Selenium Speed    0.1s

Tout fermer
    [Documentation]    Ferme tous les navigateurs ouverts
    SeleniumLibrary.Close All Browsers
    Log    Navigateurs fermés.
    Log To Console  Navigateurs fermés.