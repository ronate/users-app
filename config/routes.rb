Rails.application.routes.draw do
  get 'users/create'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
  	collection do
  		post :mass_create
  	end
	end
end
