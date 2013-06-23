JewishEcards::Application.routes.draw do

  #home page
  root :to => "pages#index"
  
  #ember api
  namespace :api do 
	  resources :envelopes
	  resources :authors
	  resources :cards
	  resources :fields
	  resources :images
  end
  
  #pages
  get "ecards", 		to: "pages#ecards"
  get "einvites", 	to: "pages#einvites"
  get "downloads", 	to: "pages#downloads"
  get "calendar",		to: "pages#calendar"
  get "about", 			to: "pages#about"
  get "artists", 		to: "pages#artists"
  get "contact",		to: "pages#contact"
  get "privacy",	 	to: "pages#privacy"
  get "terms", 			to: "pages#terms"
  

  #stripe mount
  mount StripeEvent::Engine => '/stripe'
  
  get "content/gold"
  get "content/silver"
  get "content/platinum"
  
  #devise user
  #authenticated :user do
  #  root :to => 'home#index'
  #end
  
  devise_for :users, :controllers => { :registrations => 'registrations' }
  
  #stripe card updates
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users
  
  #active-admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  
  
end