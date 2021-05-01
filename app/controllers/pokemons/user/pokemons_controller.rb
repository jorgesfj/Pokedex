class Pokemons::User::PokemonsController < ApplicationController

    def find_pokemon_by_name
        name = params[:name]

        pokemon = Pokemon.select(:id, :name, :location, :move, :description).find_by(name: name)

        render(json: { data: pokemon}, status: :ok)
    end

    def capturar_pokemon
        pokemon = load_pokemon
        pokemon_capturado = PokemonCapturado.find_by(pokemon: pokemon)

        if pokemon_capturado.present?
            render(json:{data:{message: 'message'}})
            return
        end

        capturado = PokemonCapturado.create!(pokemon: pokemon)
        render(json:{ data: capturado }, status: :ok)
    end

    def load_pokemons_capturados
        pokemons_capturados = PokemonCapturado.order('created_at DESC')

        render(json:{data: pokemons_capturados}, status: :ok)

    end

    def load_pokemon_capturado_by_name
        pokemon_capturado = PokemonCapturado
        .joins(:pokemon)
        .where(pokemons: {name: params[:name]})

        render(json:{data: pokemon_capturado}, status: :ok)
    end


    private 

    def load_pokemon
        pokemon = Pokemon.find_by(id: params[:id])

        unless pokemon
            render(
                json:{error: {message: 'Pokémon não exista na pokédex'}},
                status: :not_found
            )
        end

        pokemon
    end
end