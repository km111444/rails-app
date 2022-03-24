class User < ApplicationRecord
  validates :phone_number, numericality: true
  has_many :chatrooms
end
