class CreateDistrictCoverages < ActiveRecord::Migration
  def change
    create_table :district_coverages do |t|
      t.references :service_ad, index: true, foreign_key: true
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
