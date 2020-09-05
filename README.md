# FizzBuzz

## 🧐 Descrição do Problema

Solução desenvolvida em `Elixir` baseada no [Problema Fizzbuzz](http://dojopuzzles.com/problemas/exibe/fizzbuzz/)

## 🌟 Pré-requisitos

Ter instalado Elixir. Mais informações de como instalar, [clique aqui](https://elixir-lang.org/install.html)

### 🔢 Input de números
* ✔️ Vamos ler uma lista de números a partir de um arquivo.
  - ❌ Caso o arquivo não exista, exibiremos uma mensagem de erro.

### 🔢 Output de números
* ✔️ Números divisíveis por 3 deve aparecer como `Fizz` ao invés do número;
* ✔️ Números divisíveis por 5 devem aparecer como `Buzz` ao invés do número;
* ✔️ Números divisíveis por 3 e 5 devem aparecer como `FizzBuzz` ao invés do número'.

## 🏁 Executando a aplicação

Utilize o terminal iterativo do elixir, executando o comando

```bash
iex -S mix
```

Agora chame o função `build` do módulo `FizzBuzz`, passando como argumento o arquivo com a lista de números.

Exemplo:

```elixir
FizzBuzz.build("numbers.txt")
```

## Executando testes

```bash
mix test
```

Testes com coverage

```bash
mix coveralls.html --color
```

