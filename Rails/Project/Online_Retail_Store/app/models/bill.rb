class Bill < ApplicationRecord
  belongs_to :customer, inverse_of: :bill, validate: true, foreign_key: true
  belongs_to :payment, inverse_of: :bill, validate: true, foreign_key: true
  has_many :addresses, through: :customer, foreign_key: "shipping_address"
end
