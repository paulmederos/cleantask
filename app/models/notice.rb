class Notice < ActiveRecord::Base
  belongs_to :facility
  belongs_to :user
  
  attr_accessible :summary, :detail, :facility_id, :user_id,
                  :notice_type, :status, :priority
  
  NOTICE_TYPE = %w[Request Complaint Praise]
  PRIORITY_LEVEL = %w[Normal Immediate]
end
