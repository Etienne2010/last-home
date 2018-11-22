Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spots do
    resources :bookings, only: [:create, :new, :show, :index] do
      resources :messages, only: [:new, :create]
    end
  end
  resources :reviews

  resources :bookings, only: [:show, :edit, :update, :destroy]


  # get 'user/edit_profile', to: "users#edit"


  #patch '/user/update', to: 'users#update', as: :user
  get '/index', to: 'pages#index'
  get '/profile', to: 'users#profile', as: :profile

  # get '/spot/new', to: 'spots#new', as: :new_spot
  # post '/spot/create', to: 'spots#create', as: :create_spot
  # patch '/spot/:id/update', to: 'spots#update', as: :update_spot
  # get '/spot/:id', to: 'spots#show', as: :spots
  # get '/user/:id', to: 'users#show', as: :spot_user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
