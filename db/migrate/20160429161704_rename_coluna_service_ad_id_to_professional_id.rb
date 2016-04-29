class RenameColunaServiceAdIdToProfessionalId < ActiveRecord::Migration
  def change
	rename_column :professional_district_coverages, :service_ad_id, :professional_id
  end
end
