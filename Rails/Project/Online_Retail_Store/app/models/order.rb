class Order < ApplicationRecord
  belongs_to :customer, inverse_of: :orders
  has_one :payment, inverse_of: :order
  has_many :addresses, through: :customer, foreign_key: "shipping_address"
  has_and_belongs_to_many :products


  validates :date, presence: true
  validates :shipping_address, presence: true


  def update_total_bill
    self.total_bill = calculate_total_bill
    save
  end

  private

  def calculate_total_bill
    products.sum(:price)
  end
end
