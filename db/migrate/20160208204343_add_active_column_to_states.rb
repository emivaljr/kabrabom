class AddActiveColumnToStates < ActiveRecord::Migration
  def change
    add_column :states, :active, :boolean
  end
end
