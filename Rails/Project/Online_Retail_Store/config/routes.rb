Rails.application.routes.draw do

  root 'home#home_page'


  controls = [:address, :brand, :category, :customer, :order, :payment, :payment_type, :product, :review, :seller]
  controls.each do |controller|
    resources controller do
      member do

        get :destroy
      end
    end
  end

  get ':controller(/:action(/:id))'

  # get 'home/home_page'
  # get 'payment_type/index'
  # get 'payment_type/show'
  # get 'payment_type/new'
  # get 'payment_type/edit'
  # get 'payment_type/delete'
  # get 'seller/index'
  # get 'seller/show'
  # get 'seller/new'
  # get 'seller/edit'
  # get 'seller/delete'
  # get 'payment/index'
  # get 'payment/show'
  # get 'payment/new'
  # get 'payment/edit'
  # get 'payment/delete'
  # get 'order/index'
  # get 'order/show'
  # get 'order/new'
  # get 'order/edit'
  # get 'order/delete'
  # get 'product/index'
  # get 'product/show'
  # get 'product/new'
  # get 'product/edit'
  # get 'product/delete'
  # get 'customer/index'
  # get 'customer/show'
  # get 'customer/new'
  # get 'customer/edit'
  # get 'customer/delete'
  # get 'category/index'
  # get 'category/show'
  # get 'category/new'
  # get 'category/edit'
  # get 'category/delete'
  # get 'brand/index'
  # get 'brand/show'
  # get 'brand/new'
  # get 'brand/edit'
  # get 'brand/delete'
  # get 'review/index'
  # get 'review/show'
  # get 'review/new'
  # get 'review/edit'
  # get 'review/delete'
  # get 'address/index'
  # get 'address/show'
  # get 'address/new'
  # get 'address/edit'
  # get 'address/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
