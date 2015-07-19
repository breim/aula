Rails.application.routes.draw do
	# Root
  root 'pages#index'

  # Devise
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  # Admin sys
  get '/backoffice' => 'admin/admin#index', as: :admin 
  namespace :admin do
  	#resources :users
  end

end
