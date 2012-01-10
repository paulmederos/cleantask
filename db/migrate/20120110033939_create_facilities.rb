class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      
      t.timestamps
    end
  end
end
