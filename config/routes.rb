Rails.application.routes.draw do
  devise_for :users
  get 'codes' => 'codes#index'
  get 'codes/main' 
  get 'manufacturer'  => 'makes#index'
  get 'models' => 'makes#show'
  root "makes#index"
end
