class CreateInspections < ActiveRecord::Migration
  def self.up
    create_table :inspections do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :inspections
  end
end
