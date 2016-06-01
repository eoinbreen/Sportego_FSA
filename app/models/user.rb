class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
      
    COUNTRIES = ['Ireland', 'England']
    CARDS = ['Visa','Mastercard']
    
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :username, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password_digest, presence: true, length: { minimum: 6, maximum: 20 }
    validates :country, presence: true
end
