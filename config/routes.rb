Rails.application.routes.draw do
  devise_for :managers
  root 'dashboard#lorenzo'
  
  get 'dashboard/index'
  get 'dashboard/lorenzo'

  get '/bruno', to: 'dashboard#lorenzo'
  get '/financial/index', to: 'dashboard#index'
  get '/financial/entrada'
  get '/financial/saida'
  resources :dashboard, only: [:new, :create, :edit, :update, :destroy]
  resources :financial

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
