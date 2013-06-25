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
  
  get "cards",			to: "cards#index"
  get "plans",			to: "pages#plans"
  
  
  #pages
  get "ecards", 		to: "pages#ecards"
  get "einvites", 	to: "pages#einvites"
  get "downloads", 	to: "pages#downloads"
  get "calendar",		to: "calendar#index"
  get "about", 			to: "pages#about"
  	get "staff",			to: "pages#staff"
  	get "membership",	to: "pages#membership"
  	get "faqs",				to: "pages#faqs"
  	get "become",			to: "pages#become"
  	get "privacy",	 	to: "pages#privacy"
  	get "terms", 			to: "pages#terms" 
  	get "help",				to: "pages#help"
  get "artists", 	 	  to: "artists#index"
  get "artists/:id",  to: "artists#show", :as => :artist
  get "contacts",		to: "contacts#new"
  post "contacts",		to: "contacts#create"

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