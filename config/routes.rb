Rails.application.routes.draw do  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'welcome#index'

  get 'about', to: 'about#about'
  get 'product', to: 'product#product_list'
  get 'product/:id', to: 'product#show', as: 'product_detail'
  get 'blog', to: 'blog#blog'
  get 'login', to: 'login#login'
  resources :contact, only: [:create]

  get 'contact', to: 'contact#contact'
  get 'cart', to: 'cart#cart'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
