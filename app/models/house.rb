class House < ActiveRecord::Base
  validates :name, presence: true
  # validates :address, presence: true
  has_many :users
end