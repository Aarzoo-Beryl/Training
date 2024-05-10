class PaymentType < ApplicationRecord
  has_many :payments, validate: true

  validates :title, presence: true
end
