class Facility < ActiveRecord::Base
  belongs_to :client
  has_many :areas
end
