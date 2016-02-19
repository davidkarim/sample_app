class User < ActiveRecord::Base
  # Call-back method that is invoked by ActiveRecord before object is saved
  before_save { self.email = email.downcase }
  # Call method validates (which is inherited from ActiveRecord)
  validates :name, presence:true, length:{ maximum:50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:true, length:{ maximum:255 }, format: {with: VALID_EMAIL_REGEX}, 
    uniqueness: { case_sensitive:false }
  has_secure_password
  validates :password, length:{ minimum:6 }
end
