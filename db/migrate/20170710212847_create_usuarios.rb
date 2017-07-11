class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.timestamps
    end
    add_index :usuarios, :email, unique: true
  end
end
