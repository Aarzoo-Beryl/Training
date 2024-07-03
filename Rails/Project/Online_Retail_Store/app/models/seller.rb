class Seller < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true, format: {with: /\A[a-zA-z]/}
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true

  after_validation :log_errors

  private
    def log_errors
      if errors.any?
        puts("validation was unsuccessful because:#{errors.full_messages.join(',')}")
      end
    end

end
