class AddColumnProfessionalIdToProfessionalServices < ActiveRecord::Migration
  def change
	add_column :professional_service, :professional_id, :integer
  end
end
