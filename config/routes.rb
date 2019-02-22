Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :gears do
      resources :requests
  end
  get 'profile', to: 'pages#profile'
  get '/requests/:id/accept', to: 'requests#accept', as: "accept_request"
  get '/requests/:id/decline', to: 'requests#decline', as: "decline_request"
end
