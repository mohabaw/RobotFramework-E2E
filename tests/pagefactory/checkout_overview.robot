*** Settings ***
Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot
Library    Screenshot

*** Keywords ***

Finaliser l'achat
    verifier que le Client est sur la page de chekout-Overview
    Valider l'operation d'achat
verifier que le Client est sur la page de chekout-Overview
    SeleniumLibrary.Page should contain element
    ...    locator=${BANNIERE_PAGE_CHECKOUT_OVERVIEW} 
    # Screenshot.Take Screenshot
    Log    Je suis sur la page du chekout-Overview
    Log to console  Je suis sur la page du chekout-Overview

Valider l'operation d'achat
        SeleniumLibrary.Click element
    ...    locator=${FINISH_BUTTON}  