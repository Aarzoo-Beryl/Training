class Bill < ApplicationRecord
  belongs_to :customer, inverse_of: :bill, validate: true, foreign_key: true
  belongs_to :payment, inverse_of: :bill, validate: true, foreign_key: true
  has_many :addresses, through: :customer, foreign_key: "shipping_address"
  has_many :order_summaries
  
  validates :date, presence: true
  validates :shipping_address, presence: true
  validates :total_bill, presence: true, numericality: true
end
