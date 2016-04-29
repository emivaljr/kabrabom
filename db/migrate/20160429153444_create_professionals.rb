class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :user_id
      t.string :integer
      t.string :nothing_on_record
      t.string :integer
      t.string :active
      t.string :integer
      t.string :phone_id
      t.string :integer
      t.string :address_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
