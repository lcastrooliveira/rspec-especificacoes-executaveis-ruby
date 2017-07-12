class AddEscolhidoEmToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :escolhido_em, :datetime
  end
end
