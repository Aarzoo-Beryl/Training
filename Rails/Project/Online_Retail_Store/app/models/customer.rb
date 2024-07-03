class Customer < ApplicationRecord
  has_many :addresses,  validate: true
  has_many :review, inverse_of: :customer, validate: true
  has_many :orders
  has_many :payments, through: :bill

  validates :name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true

  before_validation :check_name, on: [:create, :update]
  after_validation :check_phone_number
  before_save :ensure_details
  private
    def check_name
      if name.blank?
        puts "name is blank"
      end
    end

    def check_phone_number
      if phone_number.length > 0
        @a = self.phone_number
        puts "ensure your phone number is #{@a} "
      end
    end

    def ensure_details
      if name.blank?
        puts("name: not mentioned")
      end
      if phone_number.blank?
        puts("phone_number: not mentioned")
      end
      if email.blank?
        puts("email: not mentioned")
      end
    end
end
