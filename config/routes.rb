Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :users, onry: [:ebit, :update]
  resources :rooms, onry: [:new, :create]

end
