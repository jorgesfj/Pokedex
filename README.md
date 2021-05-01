# API Pokédex com Ruby on Rails

>Um projeto para a disciplina eletiva de Tópicos em Sistemas de Informação. Uma Api Pokédex onde pode se consultar informações de pokémons, adicionar pokémons, fazer atualizações nas informações, e adicioná-los na lista de capturados.
## Técnologias utilizadas
>postgresql

>Ruby

>Rails

## Caminhos
# Administrador:
```sh
GET /pokemons/admin/load_all_pokemons
```
Retorna todos os pokémons cadastrados na pokédex.

```sh
POST /pokemons/admin/create_pokemon
```
Registra um novo pokémon na pokédex, com o seguinte formato de body:
```json
{
    "name":pokename,
    "location":pokelocation,
    "move":pokemove,
    "description":pokedescription
}
```

```sh
DELETE /pokemons/admin/delete_pokemon/:id
```
Excluí o registro do pokémon referente ao id passado na url.

```sh
PATCH /pokemons/admin/update_pokemon/:id
```
Atualiza o registro do pokémon referente ao id passado na url.
Informações passadas no body
```json
{    
    "name":pokename,
    "location":pokelocation,
    "move":pokemove,
    "description":pokedescription
}
```
# User
```sh
GET /pokemons/user/find_pokemon_by_name/:name
```
Encontra o pokémon pelo nome passado na url.
```sh
POST /pokemons/user/capturar_pokemon
```
Captura um pokémon, apartir desse momento o registro do pokémon estará na sua lista de capturados,
o pokémon é passado no body:
```json
    {
        "id": pokeid
    }      
```
```sh
GET /pokemons/user/load_pokemons_capturados
```
Mostra a lista de pokémons capturados.
```sh
GET /pokemons/user/load_pokemon_capturado_by_name/:name
```
Busca seus pokémons capturados pelo nome.

## Informações

Jorge Soares – jorge.farias@arapiraca.ufal.br

[https://github.com/leovaldesz](https://github.com/leovaldesz)