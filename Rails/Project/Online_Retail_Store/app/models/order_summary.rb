class OrderSummary < ApplicationRecord
  belongs_to :bill, validate: true, dependent: :destroy, counter_cache: :products_count
  belongs_to :product, validate: true, dependent: :destroy
end
