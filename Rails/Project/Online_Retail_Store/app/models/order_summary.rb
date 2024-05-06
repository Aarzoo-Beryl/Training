class OrderSummary < ApplicationRecord
  has_many :bills, validate: true
  has_many :products, validate: true
end
