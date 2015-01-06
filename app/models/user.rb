class User < ActiveRecord::Base
	EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
	validates :mail, :presence => true, confirmation: true, :uniqueness => true, :format => EMAIL_REGEX
	validates :nick, :presence => true
	has_secure_password
	belongs_to :house
end
user = User.new(nick: "konrad", password: "yolo123W", password_confirmation: "yolo123W", mail: "wada@wp.pl", mail_confirmation: "wada@wp.pl", house_id: 1)