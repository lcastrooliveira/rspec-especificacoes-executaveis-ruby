require 'rails_helper'

describe CriadorPokemon do
  let(:criador_pokemon) do
    CriadorPokemon.new(6)
  end

  describe '#criar', vcr: { cassette_name: 'CriadorPokmeon/criar' } do
    it 'cria um novo pokemon' do
      expect do
        criador_pokemon.criar
      end.to change { Pokemon.count }.by(1)
    end
  end
  describe 'pokemon criado', vcr: { cassette_name: 'CriadorPokmeon/criar' } do
    before do
      criador_pokemon.criar
    end

    subject do
      Pokemon.last
    end

    it 'possui o nome correto' do
      expect(subject.nome).to eq('Charizard')
    end
  end
end
