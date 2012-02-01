class Answer < ActiveRecord::Base
  belongs_to :question, :dependent => :destroy
  
  attr_accessible :content
end
