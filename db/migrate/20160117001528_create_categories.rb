class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.string :icon

      t.timestamps null: false
    end
  end
end
