class	Pokemon	<	ActiveRecord::Base
  
  scope :escolhidos_ontem, -> do
    where(escolhido_em: 1.day.ago.midnight..Time.zone.now.midnight)
  end

  def	nome_completo
    "#{nome}	-	#{id_nacional}" if nome && id_nacional
  end
end
