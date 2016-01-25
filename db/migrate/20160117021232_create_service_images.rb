class CreateServiceImages < ActiveRecord::Migration
  def change
    create_table :service_images do |t|
      t.string :subtitle
      t.references :service_ad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
