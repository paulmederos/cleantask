class Client < ActiveRecord::Base
  has_many :client_associations
  has_many :users, :through => :client_associations
  has_many :facilities
end
