class Payment < ApplicationRecord
  belongs_to :payment_type, validate: true, foreign_key: "title"
  belongs_to :order, validate: true ,dependent: :destroy
  belongs_to :customer , through: :bill

  validates :date, presence: true
  validates :status, presence: true
end
