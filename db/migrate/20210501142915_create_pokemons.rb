class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :location
      t.string :move
      t.string :description

      t.timestamps
    end
  end
end
