@echo off
REM Cria o repo thierry-laptop no GitHub e faz o primeiro push.
REM Corre este ficheiro UMA VEZ a partir desta pasta.
REM Pre-requisito: gh CLI autenticado (gh auth status)

cd /d D:\claudeui\github\thierry-laptop

echo.
echo === Inicializando git local ===
git init -b main
git add .
git commit -m "initial commit"
if errorlevel 1 (
    echo.
    echo [ERRO] git init/commit falhou.
    pause
    exit /b 1
)

echo.
echo === Criando repo publico no GitHub e fazendo push ===
gh repo create jeremytrindade/thierry-laptop --public --source=. --remote=origin --push --description "Guia de compra de portatil para o Thierry - analise de modelos reparaveis e upgradeaveis 2025/2026"
if errorlevel 1 (
    echo.
    echo [ERRO] Falhou. Verifica se o gh CLI esta autenticado: gh auth status
    pause
    exit /b 1
)

echo.
echo === Repo criado e publicado! ===
echo URL: https://github.com/jeremytrindade/thierry-laptop
echo.
echo O teu irmao pode aceder diretamente ao HTML em:
echo https://raw.githubusercontent.com/jeremytrindade/thierry-laptop/main/index.html
echo.
echo Ou podes activar GitHub Pages nas Settings do repo para ter um link mais limpo.
echo.
pause
