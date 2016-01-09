class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone
      t.integer :user_id
      t.boolean :active

      t.timestamps null: false
    end
  end
end
