Rails.application.routes.draw do
  get 'requests/index'
  get 'requests/show'
  get 'requests/new'
  get 'requests/create'
  get 'requests/edit'
  get 'requests/update'
  get 'requests/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  get 'gears/index'
  get 'gears/show'
  get 'gears/new'
  get 'gears/create'
  get 'gears/edit'
  get 'gears/update'
  get 'gears/destroy'
  get 'bookings/index'
  get 'bookings/create'
  root to: 'pages#home'
  resources :user
  resources :gear
  resources :request
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  resources :gear
  resources :request
    end
  end
end
