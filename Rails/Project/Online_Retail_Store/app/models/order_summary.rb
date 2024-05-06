class OrderSummary < ApplicationRecord
  belongs_to :bill, validate: true, dependent: :destroy
  belongs_to :product, validate: true, dependent: :destroy
end
