class Paypal < ApplicationRecord
  has_one :payment, as: :payable
end
