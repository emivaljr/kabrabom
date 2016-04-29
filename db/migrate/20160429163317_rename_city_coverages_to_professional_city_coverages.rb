class RenameCityCoveragesToProfessionalCityCoverages < ActiveRecord::Migration
  def change
	rename_table :city_coverages, :professional_city_coverages
  end
end
