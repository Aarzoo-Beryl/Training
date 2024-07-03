class PaymentType < ApplicationRecord
  has_many :payments, validate: true

  validates :title, presence: true

  before_create :capitalize_title
  around_create :lifecycle_info
  after_create :confirmation_info
  private
     def capitalize_title
       title.capitalize! if title.present?
     end
     def lifecycle_info
         puts("around create : before create")
         yield
         puts("around create : after create")
     end
     def confirmation_info
       puts("Payment type was successfully created")
     end
end
