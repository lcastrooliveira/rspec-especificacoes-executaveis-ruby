class AddAprovadoToArtigo < ActiveRecord::Migration[5.1]
  def change
    add_column :artigos, :aprovado, :boolean
  end
end
