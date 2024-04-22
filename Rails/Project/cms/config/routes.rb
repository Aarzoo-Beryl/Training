Rails.application.routes.draw do

  #root route
  root 'demo#index'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/about'
  get 'demo/contact'
  get 'about/us'
  get 'about/faculty'
  get 'about/members'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    resources :subjects do
      member do
        get :delete
      end
    end
    resources :pages do
      member do
        get :delete
      end
    end

    # get 'subjects/index'
    # get 'subjects/show'
    # get 'subjects/new'
    # get 'subjects/edit'
    # get 'subjects/delete'
    #
    # get 'pages/index'
    # get 'pages/show'
    # get 'pages/new'
    # get 'pages/edit'
    # get 'pages/delete'

  #default route
  get ':controller(/:action(/:id))'



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


end
