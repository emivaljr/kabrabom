class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
