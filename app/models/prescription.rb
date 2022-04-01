class Prescription < ApplicationRecord
  belongs_to :user
  belongs_to :pharmacy

  enum status: { pending: 0, preparation: 1, done: 2 }
end
