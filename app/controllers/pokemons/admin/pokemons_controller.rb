class Pokemons::Admin::PokemonsController < ApplicationController

    def load_all_pokemons 
        pokemons = Pokemon.order('created_at DESC')
        render(
            json:{
                status: 'SUCESS', message: 'Pokemons carregados', data: pokemons
            },
            status: :ok
        )
    end


    def create_pokemon
        pokemon = Pokemon.build_pokemon(
            name: params[:name],
            location: params[:location],
            move: params[:move],
            description: params[:description]
        )

        pokemon.save!

        render(json:{data:pokemon}, status: :ok)
    end

    def delete_pokemon
        pokemon = Pokemon.find_by(id: params[:id])
        pokemon.destroy
    end

    def update_pokemon
        pokemon = Pokemon.find_by(id: params[:id])
        pokemon.update(
            name: params[:name] ||  pokemon.name,
            location: params[:location] || pokemon.location,
            move: params[:move] || pokemon.move,
            description: params[:description] || pokemon.description 
        )

        render(json: {data:pokemon}, status: :ok)
    end
end