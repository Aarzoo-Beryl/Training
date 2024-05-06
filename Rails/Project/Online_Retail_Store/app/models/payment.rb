class Payment < ApplicationRecord
  has_many :payment_types, validate: true, foreign_key: "title"
  has_one :bill, validate: true
  has_one :customer , through: :bill
end
