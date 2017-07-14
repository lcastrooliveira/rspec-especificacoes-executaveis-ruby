FactoryGirl.define do
  factory :usuario, aliases: [:autor] do
    nome "lucas"
    email { "#{nome}@gmail.com" }

    trait :com_artigo do
      transient do
        total_de_artigos 3
      end

      after(:create) do |usuario, evaluator|
        create_list(:artigo, evaluator.total_de_artigos, autor: usuario)
      end
    end
  end
end
