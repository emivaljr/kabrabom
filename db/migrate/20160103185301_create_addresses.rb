class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :main
      t.string :complement
      t.integer :num
      t.integer :cep
      t.string :city
      t.string :state
      t.integer :user_id
      t.boolean :active

      t.timestamps null: false
    end
  end
end
