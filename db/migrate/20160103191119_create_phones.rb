class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :ddd
      t.integer :phone
      t.integer :user_id
      t.boolean :active

      t.timestamps null: false
    end
  end
end
