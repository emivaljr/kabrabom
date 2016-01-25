class CreateServiceUnits < ActiveRecord::Migration
  def change
    create_table :service_units do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
