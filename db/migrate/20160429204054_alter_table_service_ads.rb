class AlterTableServiceAds < ActiveRecord::Migration
  def change
	rename_table :service_ads, :professional_service
	remove_column :professional_service, :title
	remove_column :professional_service, :description
	remove_column :professional_service, :user_id
	remove_column :professional_service, :state_id
	remove_column :professional_service, :category_id
	add_column :professional_service, :excluded_at, :datetime			
  end
end
