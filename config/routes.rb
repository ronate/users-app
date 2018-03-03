Rails.application.routes.draw do
  devise_for :accounts
  get 'users/create'
  root 'users#download'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    collection do
      post :mass_create
      get :download
    end
  end
end
