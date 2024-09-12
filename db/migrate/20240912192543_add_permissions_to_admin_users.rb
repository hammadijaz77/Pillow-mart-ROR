class AddPermissionsToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :permissions, :text
  end
end
