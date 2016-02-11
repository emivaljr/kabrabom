class AddDetailsColumnToServiceAds < ActiveRecord::Migration
  def change
    add_reference :service_ads, :state, index: true, foreign_key: true
  end
end
