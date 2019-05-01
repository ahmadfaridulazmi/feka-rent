Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get '/auth', to: 'auth#user'
    get '/api', to: 'api#users'
  end
  root 'home#index'
  resources :users

end
