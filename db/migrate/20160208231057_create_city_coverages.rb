class CreateCityCoverages < ActiveRecord::Migration
  def change
    create_table :city_coverages do |t|
      t.references :service_ad, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
