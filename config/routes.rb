Rails.application.routes.draw do
  resources :members
  resources :items
  get '/orders/store', :to => 'orders#store'
  resources :orders 
  resources :details
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
