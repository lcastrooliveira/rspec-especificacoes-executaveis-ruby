require 'rails_helper'
RSpec.describe PokemonsController, type: :controller do
  describe 'PUT update' do
    let!(:pokemon) do
      create(:pokemon)
    end

    it 'atualiza o pokemon' do
      atualizador_pokemon = instance_double(AtualizadorPokemon)

      expect(AtualizadorPokemon).to receive(:new).with(pokemon).and_return(atualizador_pokemon)
      expect(atualizador_pokemon).to receive(:update!)

      put :update, params: { id: pokemon }
    end
  end
end
