class CreateClientAssociations < ActiveRecord::Migration
  def change
    create_table :client_associations do |t|
      t.integer :user_id
      t.integer :client_id
      
      t.timestamps
    end
  end
end
