class AddAtaqueAndAprovadoToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :aprovado, :boolean
    add_column :pokemons, :ataque, :integer
  end
end
