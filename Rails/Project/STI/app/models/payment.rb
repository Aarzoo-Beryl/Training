class Payment < ApplicationRecord
  belongs_to :payable, polymorphic: true

  delegate :payable_type, to: :payable
  delegate :payable_id, to: :payable
end
