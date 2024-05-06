class Seller < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true
end
