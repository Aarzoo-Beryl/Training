class Seller < ApplicationRecord
  has_many :products, dependencies: :delete
end
