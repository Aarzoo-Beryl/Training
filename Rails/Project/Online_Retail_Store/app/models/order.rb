class Order < ApplicationRecord
  belongs_to :customer, inverse_of: :orders
  has_one :payment, inverse_of: :order
  has_many :addresses, through: :customer, foreign_key: "shipping_address"
  has_and_belongs_to_many :products


  validates :date, presence: true
  validates :shipping_address, presence: true

  default_scope {where('customer_id > 1')}

  def self.total_amount_greater_than(amount)
    where('total_order > ?', amount) if amount.present?
  end

  def update_total_order
    self.total_order = calculate_total_order
    save
  end

  private

  def calculate_total_order
    products.sum(:price)
  end
end
