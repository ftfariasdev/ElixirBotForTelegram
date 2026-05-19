# ATENÇÃO - TODOS OS CÓDIGOS DEVERÃO SER COLOCADOS EM elixirbasics/lib




# Updates

Script em Elixir que busca o último update recebido pelo seu bot no Telegram.

---

# Onde o código está

Está em elixirbasics/lib 

## Pré-requisitos

- [Elixir](https://elixir-lang.org/install.html) instalado
- Token do bot do Telegram (enviado no whatsapp pelo Felipe)

---

## Configuração

1. Crie o arquivo `.env` dentro da pasta `elixirbasics/`:

2. Instale as dependências:

```bash
  cd elixirbasics
```

```bash
mix deps.get
```

---

## Como rodar

```bash
mix run lib/updates.ex
```

---

## O que o código faz

|         Função         |         Descrição         |
|-----------------|----------------------------------------------------|
| `Dotenv.load/0` | Carrega o `.env` e injeta as variáveis no processo |
| `System.get_env/1` | Lê o `TELEGRAM_TOKEN` do ambiente |
| `Req.get!/1` | Faz a requisição HTTP GET para a API do Telegram |
| `List.last/1` | Retorna o último update recebido pelo bot |

---

## Dependências

- [`req ~> 0.5`](https://hex.pm/packages/req) — cliente HTTP
- [`dotenv ~> 3.1`](https://hex.pm/packages/dotenv) — carrega variáveis do `.env`

