# Regras do Trabalho

Trabalho da disciplina de Linguagens de Programacao.

## Requisitos da Apresentacao

### 1. Contextualizacao da linguagem

- Breve historico da linguagem (origem, evolucao e principais aplicacoes)

### 2. Elementos basicos da linguagem

- Variaveis
- Estruturas condicionais
- Estruturas de repeticao
- Funcoes

### 3. Desenvolvimento pratico

- Implementar um bot no Telegram que valida CPF
- A comunicacao com a API do Telegram deve ser feita diretamente (sem bibliotecas que abstraiam a API)
- Material de referencia do professor: https://unasp-aulas.github.io/construir-algoritmos/docs/index.html#/bot-no-telegram
- Referencia oficial da API: https://core.telegram.org/bots/api

### 4. Participacao e versionamento

- Todos os integrantes devem participar da apresentacao
- Todos os integrantes devem realizar commits na parte pratica do projeto

## API do Telegram

Endpoints que serao utilizados no projeto:

```
GET  https://api.telegram.org/bot{TOKEN}/getUpdates
POST https://api.telegram.org/bot{TOKEN}/sendMessage
```

- **getUpdates** — busca novas mensagens recebidas pelo bot (polling)
- **sendMessage** — envia a resposta para o usuario

### Como criar o bot

1. Abrir o Telegram e procurar por **@BotFather**
2. Enviar `/newbot` e seguir as instrucoes (nome e username)
3. Copiar o **token** gerado
4. Criar um arquivo `.env` na raiz do projeto baseado no `.env example`
