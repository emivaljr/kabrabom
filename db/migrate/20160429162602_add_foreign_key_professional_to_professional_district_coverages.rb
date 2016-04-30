class AddForeignKeyProfessionalToProfessionalDistrictCoverages < ActiveRecord::Migration
  def change
	add_foreign_key :professional_district_coverages, :professionals
  end
end
