Rails.application.routes.draw do
  namespace :pokemons do
    scope module: :admin, path: 'admin' do
      get 'load_all_pokemons', to: 'pokemons#load_all_pokemons'
      post 'create_pokemon', to: 'pokemons#create_pokemon'
      delete 'delete_pokemon/:id', to: 'pokemons#delete_pokemon'
      patch 'update_pokemon/:id', to: 'pokemons#update_pokemon'
    end

    scope module: :user, path: 'user' do
      get 'find_pokemon_by_name/:name', to: 'pokemons#find_pokemon_by_name'
      post 'capturar_pokemon', to: 'pokemons#capturar_pokemon'
      get 'load_pokemons_capturados', to: 'pokemons#load_pokemons_capturados'
      get 'load_pokemon_capturado_by_name/:name', to: 'pokemons#load_pokemon_capturado_by_name'
    end

  end
end

