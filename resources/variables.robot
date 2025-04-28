*** Variables ***

# HOME
${SITE_URL}          https://www.saucedemo.com
${USERNAME_FIELD}    id:user-name
${USERNAME}          standard_user
${USERNAME_ERRONE}   locked_out_user
${PWD_FIELD}         id:password
${PWD}               secret_sauce
${LOGIN_BUTTON}      id:login-button


# PRODUCTS
${TITLE_SWAG_LABS}              xpath=//title[text()='Swag Labs']
${TRI_LISTE}                    xpath=//select[@data-test='product-sort-container']
${CHOIX_TRI_ALPHA_DESC}         Name (Z to A)
${CHOIX_TRI_PRIX_CROISSANT}     Price (low to high)
${CHOIX_TRI_PRIX_DECROISSANT}   Price (high to low)
${BOUTON_AJOUT_2EME_ARTICLE}    xpath=(//button[contains(text(),'Add to cart')])[2]
${NOM_2EME_ARTICLE}             xpath=(//div[@class='inventory_item_name '])[2]
${NOM_ARTICLE_TEXTE}         
${CART_BUTTON}                  id:shopping_cart_container


# CART
${BANNIERE_PAGE_PANIER}    xpath=//span[text()='Your Cart']
${NOM_ARTICLE_PANIER}      xpath=(//div[@class='inventory_item_name'])[1]
${PRIX_ARTICLE_PANIER}     xpath=(//div[@class='inventory_item_price'])[1]
${CHECKOUT_BUTTON}         id:checkout


# CHECKOUT INFORMATION
${BANNIERE_PAGE_CHECKOUT_INFO}    xpath=//span[text()='Checkout: Your Information']
${FIRST_NAME_FIELD}               id:first-name
${LAST_NAME_FIELD}                id:last-name
${ZIP_CODE_FIELD}                 id:postal-code
${CONTINUE_BUTTON}                id:continue


# CHECKOUT OVERVIEW

${BANNIERE_PAGE_CHECKOUT_OVERVIEW}       xpath=//span[text()='Checkout: Overview']
${FINISH_BUTTON}                         id:finish

# CHECKOUT COMPLETE
${BANNIERE_PAGE_CHECKOUT_COMPLETE}     xpath=//span[text()='Checkout: Complete!']
${THANKS_MESSAGE}                      xpath=//*[text()='Thank you for your order!']





  
