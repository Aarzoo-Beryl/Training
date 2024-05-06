class PaymentType < ApplicationRecord
  belongs_to :payment, validate: true 
end
