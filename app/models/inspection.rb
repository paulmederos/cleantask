class Inspection < ActiveRecord::Base
  validates_presence_of :name
  
  belongs_to :facility
  
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions #, :reject_if => proc { |attributes| attributes['content'].blank? }
end
