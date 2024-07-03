class PaymentType < ApplicationRecord
  has_many :payments, validate: true

  validates :title, presence: true

  before_create :capitalize_title
  around_create :lifecycle_info_create
  after_create :confirmation_info

  after_commit :commit_info
  after_rollback :rollback_info

  before_update :capitalize_title
  around_update :lifecycle_info_update
  after_update :updation_info

  private
     def capitalize_title
       title.capitalize! if title.present?
     end
     def lifecycle_info_create
         puts("around create : before create")
         yield
         puts("around create : after create")
     end
     def confirmation_info
       puts("Payment type was successfully created")
     end
     def commit_info
       puts("The transaction was successfully committed for PaymentType #{self.title}")
     end
     def rollback_info
       puts("The transaction was rolled back because of : #{self.error.full_messages.join(',')}")
     end
     def lifecycle_info_update
         puts("around update : before update")
         yield
         puts("around update : after update")
     end
     def updation_info
       puts("The object with id:#{self.id} was successfully updated")
     end
end
