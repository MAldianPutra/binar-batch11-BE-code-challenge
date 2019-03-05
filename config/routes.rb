Rails.application.routes.draw do
  resources :members
  resources :items
  resources :transactions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
