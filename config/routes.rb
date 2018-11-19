Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'user/edit_profile', to: "users#edit"
  patch '/user/update', to: 'users#update', as: :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
