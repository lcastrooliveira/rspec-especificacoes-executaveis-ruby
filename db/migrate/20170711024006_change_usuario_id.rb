class ChangeUsuarioId < ActiveRecord::Migration[5.1]
  def change
    rename_column :artigos, :usuario_id, :autor_id
  end
end
