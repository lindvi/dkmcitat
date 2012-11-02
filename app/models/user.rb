class User < ActiveRecord::Base
  attr_accessible :admin, :password, :password_confirmation, :remember_token, :username
  has_secure_password

  before_save :create_remember_token

  validates :username, presence: true, length: { maximum: 19 }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
