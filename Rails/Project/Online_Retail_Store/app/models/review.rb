class Review < ApplicationRecord
  has_many :products, validate: true
  has_many :customers, validate: true
end
