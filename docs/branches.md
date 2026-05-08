# Branches

Padrão adotado neste repositório para nomeação e criação de branches.

## Formato

```
<tipo>/<descricao-curta>
```

- Use letras minúsculas
- Separe palavras com hífen (`-`)
- Seja breve e descritivo

## Tipos de branch

### `feature`

Para desenvolvimento de novas funcionalidades.

```
feature/comando-start
feature/resposta-mensagens
```

### `bugfix`

Para correção de bugs.

```
bugfix/timeout-api-telegram
bugfix/polling-loop
```

### `hotfix`

Para correções urgentes.

```
hotfix/crash-polling
hotfix/token-expirado
```

### `release`

Para preparação de uma nova versão.

```
release/1.0.0
release/1.1.0
```

## Como criar uma branch

```bash
# Certifique-se de estar na main atualizada
git checkout main
git pull

# Crie e mude para a nova branch
git checkout -b feature/minha-feature
```

## Outros tipos

Existem outros prefixos que podem ser adotados conforme a necessidade:

- `docs/` — alterações na documentação
- `refactor/` — reestruturação de código
- `test/` — adição ou correção de testes
- `chore/` — tarefas de manutenção
