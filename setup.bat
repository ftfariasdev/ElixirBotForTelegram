@echo off
chcp 65001 >nul 2>&1

echo === Setup do Projeto ===
echo.

:: Configurar git hooks
echo [1/2] Configurando git hooks...
git config core.hooksPath .githooks
echo   Git hooks configurados com sucesso.
echo.

:: Verificar e instalar Elixir
echo [2/2] Verificando Elixir...

where elixir >nul 2>&1
if %errorlevel% equ 0 (
    for /f "tokens=2" %%i in ('elixir --version 2^>^&1 ^| findstr "Elixir"') do set ELIXIR_VERSION=%%i
    echo   Elixir ja instalado (versao %ELIXIR_VERSION%).
) else (
    echo   Elixir nao encontrado. Instalando...

    where choco >nul 2>&1
    if %errorlevel% neq 0 (
        echo   Chocolatey nao encontrado. Instalando Chocolatey primeiro...
        echo   IMPORTANTE: Execute este script como Administrador.
        powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
    )

    choco install elixir -y

    where elixir >nul 2>&1
    if %errorlevel% equ 0 (
        echo   Elixir instalado com sucesso.
    ) else (
        echo   Erro ao instalar Elixir. Tente manualmente: choco install elixir
        exit /b 1
    )
)

echo.
echo === Setup concluido ===
pause
