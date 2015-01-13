class User < ActiveRecord::Base
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  validates :email, :presence => true, confirmation: true, :uniqueness => true, :format => EMAIL_REGEX
  validates :nick, :presence => true
  has_secure_password
  belongs_to :house
end