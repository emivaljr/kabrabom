class RenameDistrictCoveragesToProfessionalDistrictCoverages < ActiveRecord::Migration
  def change
    rename_table :district_coverages, :professional_district_coverages
  end
end
