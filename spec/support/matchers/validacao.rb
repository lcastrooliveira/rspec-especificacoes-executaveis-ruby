RSpec::Matchers.define :valida_presenca_de_string do |attr|

  description { "valida presenca do #{attr}" }

  match do |sujeito|
    verifica_vazio?(sujeito, attr) &&
    verifica_preenchido?(sujeito, attr)
  end

  failure_message do |sujeito|
    "esperava-se que #{sujeito} tivesse validacao em #{attr}"
  end

  failure_message_when_negated do |sujeito|
    "esperava-se que #{sujeito} nao tivesse validacao em #{attr}"
  end

  def verifica_vazio?(sujeito, attr)
    instancia = sujeito.new
    instancia.valid?
    instancia.errors[attr].include?("can't be blank")
  end

  def verifica_preenchido?(sujeito, attr)
    params = {}
    params[:nome] = 'Charizard'
    instancia = sujeito.new(params)
    instancia.valid?
    instancia.errors[attr].empty?
  end
end
