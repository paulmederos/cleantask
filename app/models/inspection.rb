class Inspection < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions
  
  attr_accessible :name
end
