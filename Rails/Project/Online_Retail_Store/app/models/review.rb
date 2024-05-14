class Review < ApplicationRecord
  belongs_to :product, validate: true
  belongs_to :customer, validate: true

  validates :description, presence: true
  scope :customer, -> { where('reviews.customer_id >?',1)}
  scope :product, -> { where('reviews.product_id >?',1)}
end
