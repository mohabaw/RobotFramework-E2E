# Automatisation Robot Framework

## Description
Script d'automatisation Robot Framework basé sur SeleniumLibrary
Base de test: site démo d'un parcours d'achat en ligne (https://www.saucedemo.com/)
Le projet comprend deux tests:
   -  Un test de parcours bout en bout passant, utilisant 3 navigateurs ("Commander un produit - multinavigateurs")
   -  Un test négatif au niveau du login ("Test de login KO")

## Pattern utilisé
Page Object Model

## Execution des tests
! Sur Windows !
1. **Naviguer vers le dossier contenant les scripts de test**
```bash
cd run
```
2. **Exécuter le script de test**
```bash
runner.bat
```

## Prérequis: Installations
pip install robotframework
pip install robotframework-seleniumlibrary
pip install webdriver-manager
ou bien pip install robotframework-browser puis rfbrowser init
pip install robotframework-faker


