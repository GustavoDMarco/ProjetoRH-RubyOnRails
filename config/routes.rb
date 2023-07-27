Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :endereco_funcionarios
  resources :funcionarios
  resources :setors
  resources :endereco_empresas
  resources :empresas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
