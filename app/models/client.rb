class Client < ActiveRecord::Base
  has_many :client_assocations
  has_many :users, :through =>:client_associations
end
