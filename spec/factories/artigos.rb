FactoryGirl.define do
  sequence(:titulo, 125) do |n|
    "Diversas dicas do RSpec #{n}"
  end
  factory :artigo do
    titulo
    conteudo { "Conteudo do artigo #{titulo}. Approved: #{aprovado}" }
    created_at { 2.days.ago }
    association :autor, factory: :usuario, nome: 'Mauro'

    trait :aprovado do
      aprovado true
    end

    trait :nao_aprovado do
      aprovado false
    end

    trait :titulo_maiusculo do
      titulo 'DIVERSAS DICAS DO RSPEC'
    end

    factory :artigo_aprovado_titulo_maiusculo,
            traits: [:aprovado, :titulo_maiusculo]
  end
end
