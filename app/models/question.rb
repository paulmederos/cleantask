class Question < ActiveRecord::Base
  belongs_to  :inspection
  has_one     :answer
  
  accepts_nested_attributes_for :answer
end
