class AlterTableServiceImages < ActiveRecord::Migration
  def change
	rename_index :service_images, 'index_service_images_on_service_ad_id', 'idx_serv_img_on_serv_ad_id'
	remove_foreign_key :service_images, :service_ads	
	rename_column :service_images, :service_ad_id, :professional_profession_id
	rename_table :service_images, :professional_profession_images
  end
end
