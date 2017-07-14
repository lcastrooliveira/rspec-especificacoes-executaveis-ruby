require 'rails_helper'

describe CardPresenter do
  subject(:card_presenter) do
    CardPresenter.new(objeto)
  end
  context 'comum' do
    describe '#show' do
      let(:objeto) do
        double('Um objeto')
      end


      before do
        to_presenter = { nome: 'Lucas', idade: 26 }
        allow(objeto).to receive(:to_presenter).and_return(to_presenter)
      end

      it 'retorna um paragrafo por chave' do
        expect(card_presenter.show).to eq(%{<p>nome: Lucas</p><p>idade: 26</p>})
      end
    end
  end
  context 'Pokemon' do
    let(:objeto) do
      object_double(Pokemon.new, to_presenter: { nome: 'Charizard' })
    end
    it 'retorna um paragrafo por chave' do
      expect(card_presenter.show).to eq(%{<p>nome: Charizard</p>})
    end
  end
end
