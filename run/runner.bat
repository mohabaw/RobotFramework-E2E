@echo off
REM =============================================
REM Script pour convertir E2E.feature -> E2E.robot, générer run_tests.robot et exécuter les tests
REM =============================================

cd ..

echo.
echo [INFO] Nettoyage du dossier workspace...
rmdir /s /q "workspace"
mkdir "workspace"


echo.
echo [INFO] Lancement des tests avec Robot Framework...

robot --outputdir workspace tests\features\E2E.robot

echo.
echo [INFO] Tests terminés. Résultats dans le dossier workspace.
pause


