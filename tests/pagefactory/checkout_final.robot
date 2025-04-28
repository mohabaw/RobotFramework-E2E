*** Settings ***

Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot
Library    Screenshot

*** Keywords ***

Verifier que le Client est sur la page finale du checkout
    SeleniumLibrary.Page should contain
    ...    text=Checkout: Complete!
    # Screenshot.Take Screenshot
    Log    Je suis sur la page finale du checkout
    Log to console   Je suis sur la page finale du checkout
  