class CorrectTableProfessional < ActiveRecord::Migration
  def change
	change_column :professionals, :user_id, 'integer USING CAST(user_id AS integer)'
	change_column :professionals, :nothing_on_record, 'integer USING CAST(nothing_on_record AS integer)'
	change_column :professionals, :active, 'integer USING CAST(active AS integer)'
	change_column :professionals, :phone_id, 'integer USING CAST(phone_id AS integer)'
	change_column :professionals, :address_id, 'integer USING CAST(address_id AS integer)'
	remove_column :professionals, :integer
  end
end
