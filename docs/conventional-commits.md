# Conventional Commits

Padrão adotado neste repositório para manter o histórico de commits organizado e legível.

## Formato

```
<tipo>: descrição curta do que você fez 
```

## Tipos utilizados neste projeto

### `feat`

Usado quando uma **nova funcionalidade** é adicionada ao projeto.

```
feat: adicionar comando /start ao bot

```

### `fix`

Usado para **correção de bugs**.

```
fix: corrigir timeout na conexão com a API do Telegram

```

### `docs`

Usado para **alterações na documentação** (sem mudança de código).

```
docs: adicionar guia de configuração do bot

```

## Outros tipos

Existem outros tipos definidos pela convenção que podem ser adotados conforme a necessidade do projeto:

- `refactor` — reestruturação de código sem alterar comportamento
- `test` — adição ou correção de testes
- `chore` — tarefas de manutenção (dependências, configs, CI)
- `style` — formatação, espaços, ponto e vírgula (sem mudança de lógica)
- `perf` — melhorias de performance
- `ci` — alterações em pipelines de CI/CD
- `build` — alterações no sistema de build ou dependências externas

Para a especificação completa, consulte: https://www.conventionalcommits.org/pt-br
