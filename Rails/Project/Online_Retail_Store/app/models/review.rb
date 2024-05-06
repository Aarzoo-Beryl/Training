class Review < ApplicationRecord
  belongs_to :products, validate: true
  belongs_to :customers, validate: true
end
