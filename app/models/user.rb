class User < ApplicationRecord
  validates :phone_number, numericality: true
end
