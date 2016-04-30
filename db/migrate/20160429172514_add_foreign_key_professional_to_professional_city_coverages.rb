class AddForeignKeyProfessionalToProfessionalCityCoverages < ActiveRecord::Migration
  def change
	add_foreign_key :professional_city_coverages, :professionals
  end
end
