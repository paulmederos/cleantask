class Notice < ActiveRecord::Base
  belongs_to :facility
  
  attr_accessible :summary, :detail, :facility_id, 
                  :notice_type, :status, :priority
  
  NOTICE_TYPE = %w[Request Complaint Praise]
  PRIORITY_LEVEL = %w[Normal Immediate]
end
