class Question < ActiveRecord::Base
  belongs_to :inspection
  has_one :answer
end
