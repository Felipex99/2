Rails.application.routes.draw do
  resources :clientes
  root'home#index'
  get 'home/clientes'
  get 'home/sobre'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
