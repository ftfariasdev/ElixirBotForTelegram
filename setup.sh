#!/bin/bash

echo "=== Setup do Projeto ==="
echo ""

# Configurar git hooks
echo "[1/2] Configurando git hooks..."
git config core.hooksPath .githooks
echo "  Git hooks configurados com sucesso."
echo ""

# Verificar e instalar Elixir
echo "[2/2] Verificando Elixir..."

if command -v elixir &> /dev/null; then
  elixir_version=$(elixir --version | grep "Elixir" | awk '{print $2}')
  echo "  Elixir ja instalado (versao $elixir_version)."
else
  echo "  Elixir nao encontrado. Instalando..."

  if ! command -v brew &> /dev/null; then
    echo "  Homebrew nao encontrado. Instalando Homebrew primeiro..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  brew install elixir

  if command -v elixir &> /dev/null; then
    elixir_version=$(elixir --version | grep "Elixir" | awk '{print $2}')
    echo "  Elixir instalado com sucesso (versao $elixir_version)."
  else
    echo "  Erro ao instalar Elixir. Tente manualmente: brew install elixir"
    exit 1
  fi
fi

echo ""
echo "=== Setup concluido ==="
