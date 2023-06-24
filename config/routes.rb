Rails.application.routes.draw do
  root to: 'top#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/setup', to: 'setup#index', as: 'setup'
end
