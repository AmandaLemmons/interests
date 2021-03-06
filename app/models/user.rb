class User < ActiveRecord::Base
  has_secure_password
  has_many :posts


  validates  :username, presence: true, length:{maximum: 50},  uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates  :email, presence: true, length:{maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
  validates  :password, presence: true, length:{minimum: 6}
  validates  :password_confirmation, presence: true


end
