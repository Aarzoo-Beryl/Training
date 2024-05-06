class Customer < ApplicationRecord
  has_many :addresses, inverse_of: :customer, validate: true
  has_many :review, inverse_of: :customer, validate: true
  has_many :bills, inverse_of: :customer, validate: true
  has_many :payments, through: :bill
end
