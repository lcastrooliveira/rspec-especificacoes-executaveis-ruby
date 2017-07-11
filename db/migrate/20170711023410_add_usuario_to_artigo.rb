class AddUsuarioToArtigo < ActiveRecord::Migration[5.1]
  def change
    add_reference :artigos, :usuario, foreign_key: true
  end
end
