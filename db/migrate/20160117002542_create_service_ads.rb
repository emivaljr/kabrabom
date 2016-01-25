class CreateServiceAds < ActiveRecord::Migration
  def change
    create_table :service_ads do |t|
      t.string :title
      t.text :description
      t.boolean :active
      t.decimal :price
      t.integer :user_id
      t.references :service, index: true, foreign_key: true
      t.references :service_unit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
