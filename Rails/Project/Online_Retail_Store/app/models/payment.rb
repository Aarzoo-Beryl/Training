class Payment < ApplicationRecord
  belongs_to :payment_type, validate: true
  belongs_to :order, validate: true ,dependent: :destroy
  has_one :customer, through: :order, disable_joins: true

  validates :date, presence: true
  validates :status, presence: true

  enum status: [:paid, :refund_initiated, :pending]

end
