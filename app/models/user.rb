class User < ActiveRecord::Base
  
  has_many :client_associations
  has_many :clients, :through => :client_associations
  has_many :notices
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :phone, :password, :password_confirmation, :remember_me
  
  def admin?
    return admin
  end
  
  def client_user?
    return client_user
  end
  
  def find_by_access
    # Search database based on current_user's access level.
  end
  
end
