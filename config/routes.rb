Rails.application.routes.draw do
  root to: 'pages#home'
  resources :user, do
  resources :gear, do
  resources :request
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
