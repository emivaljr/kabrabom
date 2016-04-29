class RenameColumnServiceAdIdToProfessionalId < ActiveRecord::Migration
  def change
	rename_column :professional_city_coverages, :service_ad_id, :professional_id
  end
end
