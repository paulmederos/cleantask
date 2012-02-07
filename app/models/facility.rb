class Facility < ActiveRecord::Base
  belongs_to :client
  has_many :areas
  has_many :inspections
  has_many :notices
  
  validates_presence_of :client_id, :name, :address, :zip
end
