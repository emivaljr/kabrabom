class DeleteColumnUserIdFromPhones < ActiveRecord::Migration
  def change
	remove_column :phones, :user_id
  end
end
