# Listas (Lists):

* Listas em Elixir são coleções ordenadas de elementos.
* Elas são representadas por colchetes [ ] e podem conter qualquer tipo de dado.
* Exemplo: 
```elixir
[1, 2, 3, 4, 5]
```

# Tuplas (Tuples):

* Tuplas são coleções ordenadas de elementos, assim como listas, mas com algumas diferenças importantes.
* Elas são representadas por chaves { } e podem conter uma quantidade fixa de elementos de tipos diferentes.
* Exemplo:
```elixir
 {:ok, "Success", 200}
```

# Listas de Palavras-Chave (Keyword Lists):

* Listas de palavras-chave são listas especiais onde cada elemento é uma tupla de duas partes, onde o primeiro elemento é um átomo (geralmente uma palavra-chave) e o segundo elemento é qualquer valor.
* Elas são usadas frequentemente para passar opções ou configurações para funções.
* Exemplo: 
```elixir
[{:name, "John"}, {:age, 30}, {:city, "New York"}]
```

# Mapas (Maps):

* Mapas são coleções de chave-valor onde as chaves podem ser de qualquer tipo e os valores também podem ser de qualquer tipo.
* Eles são muito versáteis e são amplamente utilizados em Elixir.
* São representados por %{}.
* Exemplo: 
```elixir
%{name: "John", age: 30, city: "New York"}
```
