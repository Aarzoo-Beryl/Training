class Product < ApplicationRecord
  belongs_to :brand , inverse_of: :products, validate: true
  belongs_to :category, inverse_of: :products, validate: true, touch: true
  belongs_to :seller, inverse_of: :products, validate: true
  has_many :reviews
  has_and_belongs_to_many :orders



  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true


  before_save :set_default_price
  around_save :log_activity
  after_save :saved_info

  private
    def set_default_price
      self.price ||= 0
      puts("as the price of the product was not mentioned it was taken as zero by default")
    end
    def log_activity
      puts("around save : before save")
      yield
      puts("around save : after save")
    end
    def saved_info
      puts("the object was successfully saved")
    end
end
