require 'rails_helper'

describe Pokemon do
  describe '#nome_completo' do
    context 'quando possui os valores' do
      subject do
        2
      end
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
end
