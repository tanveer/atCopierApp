Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources "contacts", only: [:new, :create]
  get 'codes' => 'codes#index'
  get 'makes/contact' 
  get 'manufacturer'  => 'makes#index'
  get 'models' => 'makes#show'
  root "makes#index"
end
