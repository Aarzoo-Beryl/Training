class Brand < ApplicationRecord
  has_many :products, dependencies: :delete
end
