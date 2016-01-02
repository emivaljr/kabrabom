class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps null: false
    end
  end
end
