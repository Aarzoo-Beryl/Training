class CreditCard < ApplicationRecord
  has_one :payment, as: :payable
end
