class AlterColumnPhoneNumberFromUsers < ActiveRecord::Migration
  def change
	rename_column :users, :phone_number, :phone_id
	change_column :users, :phone_id, 'integer USING CAST(phone_id AS integer)'
  end
end
