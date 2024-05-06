class Category < ApplicationRecord
  has_many :products, dependencies: :delete
end
