class Customer < ApplicationRecord
  has_many :addresses, inverse_of: :customer, validate: true
  belongs_to :review, inverse_of: :customer, foreign_key: 'title', validate: true
  has_many :bills, inverse_of: :customer, foreign_key: 'title', validate: true
  has_many :payments, through: :bill
end
