class Customer < ApplicationRecord
  has_many :addresses, inverse_of: :customer, validate: true
  has_many :review, inverse_of: :customer, validate: true
  has_many :orders, inverse_of: :customer, validate: true
  has_many :payments, through: :bill

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
end
