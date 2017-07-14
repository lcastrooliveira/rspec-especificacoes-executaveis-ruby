shared_examples 'valida presenca de string' do |klass, attr|
  describe "#{attr}" do
    it 'possui erro quando esta vazio' do
      instancia = klass.new
      instancia.valid?
      expect(instancia.errors[:nome]).to include("can't be blank")
    end
    it 'nao possui erro quando esta preenchido' do
      params = {}
      params[attr] = 'Charizard'
      instancia = klass.new(params)
      instancia.valid?
      expect(instancia.errors[attr]).to be_empty
    end
  end
end
