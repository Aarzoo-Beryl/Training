class HomeController < ApplicationController
  def home_page
  end

  def index
    @customers = Customer.all
  end
end
