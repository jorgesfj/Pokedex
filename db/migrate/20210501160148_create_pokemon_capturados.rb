class CreatePokemonCapturados < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemon_capturados do |t|
      t.string :data_captura
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
