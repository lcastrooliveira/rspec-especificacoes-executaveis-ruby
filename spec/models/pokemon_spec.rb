require 'rails_helper'

describe Pokemon do
  describe '#nome_completo' do
    context 'quando possui os valores' do
      subject do
        build_stubbed(:pokemon)
      end
      it	'exibe o nome e o id nacional'	do
    		expect(subject.nome_completo).to	eq('Charizard	-	6')
      end
    end
    context 'quando não possui o nome e o id nacional' do
      subject do
        Pokemon.new
      end
      it 'é nil ' do
        expect(subject.nome_completo).to be_nil
      end
    end
  end
  describe '.escolhidos_ontem' do

    before do
      hoje = Time.zone.local(2015,7,11,15)
      travel_to(hoje)
    end

    after do
      travel_back
    end

    subject do
      Pokemon.escolhidos_ontem
    end
    it 'tem o pokemon escolhido ontem' do
      pokemon_escolhido_ontem = create(:pokemon, escolhido_em: Time.zone.local(2015,7,10,23,59,59))
      expect(subject).to include(pokemon_escolhido_ontem)
    end
    it 'não tem pokemon de hoje' do
      pokemon_escolhido_hoje = create(:pokemon, escolhido_em: Time.zone.local(2015,7,11,15))
      expect(subject).to_not include(pokemon_escolhido_hoje)
    end
    it 'não tem pokemon escolhido antes de ontem' do
      pokemon_escolhido_antes_de_ontem = create(:pokemon, escolhido_em: Time.zone.local(2015,7,9))
      expect(subject).to_not include(pokemon_escolhido_antes_de_ontem)
    end
  end

  describe 'validacoes' do
    context 'nome' do
      it { should validate_presence_of(:nome) }
    end
    context 'id_nacional' do
      it { should validate_presence_of(:id_nacional) }
      it { should validate_numericality_of(:id_nacional).only_integer.is_greater_than(0) }
    end
    describe 'ataque' do
      context 'quando esta aprovado' do
        subject do
          Pokemon.new(aprovado: true)
        end
        it { should validate_presence_of(:ataque) }
      end
      context 'quando nao esta aprovado' do
        subject do
          Pokemon.new
        end
        it { should_not validate_presence_of(:ataque) }
      end
    end
  end
end
