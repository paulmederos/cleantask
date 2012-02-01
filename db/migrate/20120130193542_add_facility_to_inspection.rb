class AddFacilityToInspection < ActiveRecord::Migration
  def change
    add_column :inspections, :facility_id, :integer
  end
end
