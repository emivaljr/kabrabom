class CreateProfessionalProfessions < ActiveRecord::Migration
  def change
    create_table :professional_professions do |t|
      t.integer :professional_id
      t.integer :profession_id

      t.timestamps null: false
    end
  end
end
