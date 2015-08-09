Rails.application.routes.draw do
    

  get 'Codes' => 'codes#index'
  get 'codes/show' 
  root 'makes#index', as: 'Manufactiurere'  
  get 'Models' => 'makes#show'

end
