Rails.application.routes.draw do
  get 'companies/new'
  get 'companies/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'

  resources :companies, only: [:new, :create]
end
