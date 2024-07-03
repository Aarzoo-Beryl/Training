class Brand < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :title, presence: true

  after_initialize :log_initialize
  after_find :log_found
  after_touch :log_touched

  private
    def log_initialize
      puts("you have initialized an new object")
    end
    def log_found
      puts("you have found a new object with id: #{self.id}")
    end
    def log_touched
      puts("you have touched the object with id: #{self.id}")
    end
end
