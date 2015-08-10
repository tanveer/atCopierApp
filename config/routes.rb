Rails.application.routes.draw do
  devise_for :users
  get 'codes' => 'codes#index'
  get 'codes/show' 
  root 'makes#index', as: 'manufacturer'  
  get 'models' => 'makes#show'
end
