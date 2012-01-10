class CreateClientAssociations < ActiveRecord::Migration
  def change
    create_table :client_associations do |t|

      t.timestamps
    end
  end
end
