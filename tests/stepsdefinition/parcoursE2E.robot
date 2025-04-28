*** Settings ***
Resource    ./../pagefactory/accueil.robot
Resource    ./../pagefactory/checkout_info.robot
Resource    ./../pagefactory/checkout_final.robot
Resource    ./../pagefactory/checkout_overview.robot
Resource    ./../pagefactory/panier.robot

*** Keywords ***
Le Client est authentifié (${NAVIGATEUR})
    accueil.Le Client s'authentifie (${NAVIGATEUR})

L'utilisateur ajoute un produit au panier
    produits.Remplir le panier et le visualiser

L'utilisateur passe au paiement
    panier.Valider le panier
    checkout_info.Passer la premiere etape du checkout
    checkout_overview.Finaliser l'achat

La commande est validée
    checkout_final.Verifier que le Client est sur la page finale du checkout
