class AlterTableAddresses < ActiveRecord::Migration
  def change
	remove_column :addresses, :state
	remove_column :addresses, :user_id
	change_column :addresses, :city, 'integer USING CAST(city AS integer)'
	rename_column :addresses, :city, :city_id
  end
end
