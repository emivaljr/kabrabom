class AddDistrictToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :district, :string
  end
end
