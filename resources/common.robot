*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Gérer la vitesse d'execution
    [Documentation]    Gére la vitesse d'execution du script pour mieux observer le comportement
    Set Selenium Speed    0.1s

Tout fermer
    [Documentation]    Ferme tous les navigateurs ouverts
    SeleniumLibrary.Close All Browsers
    Log    Navigateurs fermés.
    Log To Console  Navigateurs fermés.