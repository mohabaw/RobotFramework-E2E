*** Settings ***

Resource    ../../resources/common.robot
Resource    ../../resources/variables.robot


*** Keywords ***
Remplir le panier et le visualiser
    Verifier que le Client est sur la page des produits
    Tri Alpha descendant
    Tri Prix decroissant
    Tri Prix Croissant
    Ajouter un produit au panier
    Acceder au panier

Verifier que le Client est sur la page des produits
    SeleniumLibrary.Page should contain element
    ...    locator=${TITLE_SWAG_LABS} 
    # Screenshot.Take Screenshot
    Log    On est sur la page des produits
    Log to console  On est sur la page des produits

Tri Alpha descendant
    SeleniumLibrary.Select from list by label
    ...    ${TRI_LISTE} 
    ...    ${CHOIX_TRI_ALPHA_DESC}
  

Tri Prix Croissant
    SeleniumLibrary.Select from list by label
    ...    ${TRI_LISTE} 
    ...    ${CHOIX_TRI_PRIX_CROISSANT} 
 

Tri Prix decroissant
    SeleniumLibrary.Select from list by label
    ...    ${TRI_LISTE} 
    ...    ${CHOIX_TRI_PRIX_DECROISSANT} 
  

Ajouter un produit au panier
    SeleniumLibrary.Wait Until Element Is Visible    ${NOM_2EME_ARTICLE}    10s
    SeleniumLibrary.Click element
    ...    locator=${BOUTON_AJOUT_2EME_ARTICLE} 
                    # 2ème produit de la liste
    ${NOM_ARTICLE_TEXTE}=    SeleniumLibrary.Get text  ${NOM_2EME_ARTICLE}   
    Set Suite Variable    ${NOM_ARTICLE_TEXTE}
    log    Le nom de l'article est: ${NOM_ARTICLE_TEXTE}
    log to console  Le nom de l'article est: ${NOM_ARTICLE_TEXTE}
  


Acceder au panier
    SeleniumLibrary.Click element
    ...    locator=${CART_BUTTON}