class AddClientUserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :client_user, :boolean
  end
end
