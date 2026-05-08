# Setup do Projeto

Script que configura o ambiente de desenvolvimento automaticamente.

## O que o script faz

1. Configura os git hooks do projeto (validacao de commits)
2. Verifica se o Elixir esta instalado e instala caso necessario

## Como executar

### macOS / Linux

```bash
./setup.sh
```

Se necessario, o script instala o [Homebrew](https://brew.sh/) e em seguida o Elixir.

### Windows

```cmd
setup.bat
```

Executar como **Administrador**. Se necessario, o script instala o [Chocolatey](https://chocolatey.org/) e em seguida o Elixir.
