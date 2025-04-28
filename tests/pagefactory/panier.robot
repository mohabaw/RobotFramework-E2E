*** Settings ***
Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot
Resource    ./produits.robot


*** Keywords ***
Valider le panier
    Verifier que le Client est sur la page panier
    verifier que la reference et le prix de l'article sont conformes
    Passer au checkout

Verifier que le Client est sur la page panier
    SeleniumLibrary.Page should contain element
    ...    locator=${BANNIERE_PAGE_PANIER} 
    Log    Je suis sur la page Panier
    Log to console  Je suis sur la page Panier


verifier que la reference et le prix de l'article sont conformes
   SeleniumLibrary.Element text should be
   ...    locator=${NOM_ARTICLE_PANIER}
  ...    expected=${NOM_ARTICLE_TEXTE} 
  Log to console  L'article dans le panier correspond bien à celui sélectionné ${NOM_ARTICLE_TEXTE} 
 
    
Passer au checkout
    SeleniumLibrary.Click element
    ...    locator=${CHECKOUT_BUTTON}