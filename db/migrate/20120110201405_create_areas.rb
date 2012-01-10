class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :facility_id
      
      t.timestamps
    end
  end
end
