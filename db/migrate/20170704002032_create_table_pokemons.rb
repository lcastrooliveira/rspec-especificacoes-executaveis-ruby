class CreateTablePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :nome
      t.integer :id_nacional
    end
  end
end
