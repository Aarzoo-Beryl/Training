Rails.application.routes.draw do

  root 'users#index'

  resources :users do
    member do
      get :destroy
    end
  end
  # get 'user/index'
  # get 'user/show'
  # get 'user/edit'
  # get 'user/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #default route
  get ':controller(/:action(/:id))'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
