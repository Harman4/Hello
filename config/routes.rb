Rails.application.routes.draw do
  resources :object_names
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
resources :users, except: [:index]
  get 'simple_pages/about'
  get 'simple_pages/products'
  get 'simple_pages/orders'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'simple_pages#index'

end
