Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources "contacts", only: [:new, :create]
  get 'makes/index'
  get 'codes/index'
  get 'makes/show'
  
  root "makes#welcome"

end
