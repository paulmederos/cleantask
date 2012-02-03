class CreateNotices < ActiveRecord::Migration
  def self.up
    create_table :notices do |t|
      t.string  :summary
      t.string  :detail
      t.integer :facility_id
      t.string  :notice_type
      t.string  :status,        :default => "Open"
      t.string  :priority  
      t.timestamps
    end
  end

  def self.down
    drop_table :notices
  end
end
