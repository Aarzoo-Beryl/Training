class Product < ApplicationRecord
  delegated_type :productable, types: [Electronic, Clothing], dependent: :destroy
end
