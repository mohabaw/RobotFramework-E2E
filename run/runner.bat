@echo off


cd ..

echo.
echo [INFO] Nettoyage du dossier workspace...
rmdir /s /q "workspace"
mkdir "workspace"


echo.
echo [INFO] Lancement des tests avec Robot Framework...

robot --outputdir workspace tests\features\test_cases.robot

echo.
echo [INFO] Tests terminés. Résultats dans le dossier workspace.
pause


