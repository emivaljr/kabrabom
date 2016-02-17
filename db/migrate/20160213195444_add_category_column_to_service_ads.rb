class AddCategoryColumnToServiceAds < ActiveRecord::Migration
  def change
    add_reference :service_ads, :category, index: true, foreign_key: true
  end
end
