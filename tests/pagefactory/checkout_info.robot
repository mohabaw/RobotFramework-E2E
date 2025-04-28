*** Settings ***
Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot
Library    Screenshot
Library    FakerLibrary

*** Keywords ***

Passer la premiere etape du checkout
    verifier que le Client est sur la page de chekout-Infos
    Saisir prenom Client
    Saisir nom Client
    Saisir CP Client
    Valider les infos de checkout saisies

verifier que le Client est sur la page de chekout-Infos
    SeleniumLibrary.Page should contain element
    ...    locator=${BANNIERE_PAGE_CHECKOUT_INFO}
    # Screenshot.Take Screenshot
    Log    Je suis sur la page du chekout-Infos
    Log to console   Je suis sur la page du chekout-Infos

Saisir prenom Client
    ${PRENOM}=     FakerLibrary.First name
    SeleniumLibrary.Input text
    ...    locator=${FIRST_NAME_FIELD}  
    ...    text=${PRENOM}

Saisir nom Client
    ${NOM}=     FakerLibrary.Last name
    SeleniumLibrary.Input text
    ...    locator=${LAST_NAME_FIELD}
    ...    text=${NOM}

Saisir CP Client
    ${ZIP_CODE}=    FakerLibrary.Postalcode
    SeleniumLibrary.Input text
    ...    locator=${ZIP_CODE_FIELD}  
    ...    text=${ZIP_CODE}
 

Valider les infos de checkout saisies
    SeleniumLibrary.Click element
    ...    locator=${CONTINUE_BUTTON} 
