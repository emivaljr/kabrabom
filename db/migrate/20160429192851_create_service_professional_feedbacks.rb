class CreateServiceProfessionalFeedbacks < ActiveRecord::Migration
  def change
    create_table :service_professional_feedbacks do |t|
      t.integer :professional_service_id
      t.integer :quantity_stars
      t.integer :user_id
      t.string :feedback

      t.timestamps null: false
    end
  end
end
