class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :name
      t.string :password
      t.integer :cpf , limit:'14'

      t.timestamps null: false
    end
  end
end
