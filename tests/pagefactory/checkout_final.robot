*** Settings ***

Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot

*** Keywords ***

Verifier que le Client est sur la page finale du checkout
    SeleniumLibrary.Page should contain
    ...    text=Checkout: Complete!
    Log    Je suis sur la page finale du checkout
    Log to console   Je suis sur la page finale du checkout
  