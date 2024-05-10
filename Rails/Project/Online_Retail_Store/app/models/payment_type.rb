class PaymentType < ApplicationRecord
  has_many :payments, validate: true, default: 0

  validates :title, presence: true
end
