class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.string :facility_id
      t.string :description
      
      t.timestamps
    end
  end
end
