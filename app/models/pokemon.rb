class	Pokemon	<	ActiveRecord::Base

  validates :nome, :id_nacional, presence: true
  validates	:ataque,	presence:	true, if: :aprovado?

  validates :id_nacional, numericality: { only_integer: true, greater_than: 0 }
  scope :escolhidos_ontem, -> do
    where(escolhido_em: 1.day.ago.midnight..Time.zone.now.midnight)
  end

  def	nome_completo
    "#{nome}	-	#{id_nacional}" if nome && id_nacional
  end
end
