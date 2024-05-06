class Review < ApplicationRecord
  belongs_to :product, validate: true
  belongs_to :customer, validate: true

  validates :description, presence: true
end
