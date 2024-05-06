class OrderSummary < ApplicationRecord
  belongs_to :bills, validate: true, dependencies: :delete
  belongs_to :products, validate: true, dependencies: :delete
end
