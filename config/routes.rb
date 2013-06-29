Msy::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  #Stripe subscriptions
  mount StripeEvent::Engine => '/stripe'
  get "content/gold"
  get "content/silver"
  get "content/platinum"
  
  get 'tags/:tag', to: 'articles#index', as: :tag
  
  get "video", to: "videos#index"
  get "video/:id", to: "videos#show", :as => :video_show
  
  get "audio", to: "audios#index"
  get "audio/:id", to: "audios#show", :as => :audio_show
  
  get "slideshow", to: "slideshows#index"
  get "slideshow/:id", to: "slideshows#show", :as => :slideshow_show
  
  get "reading", to: "readings#index"
  get "reading/:id", to: "readings#show", :as => :reading_show
  
  get "workshops", to: "workshops#index"
  get "workshop-topics", to: "workshops#topics", :as => :workshops_topics
  get "workshops/:id", to: "workshops#show", :as => :workshops_show
  get "booking-mark", to: "workshops#book", :as => :book
  
  get "classes", to: "classes#index", :as => :classes
  get "new-to-yoga", to: "classes#newtoyoga", :as => :newtoyoga
  get "santa-cruz-yoga", to: "classes#scyoga", :as => :scyoga
  
  get "contact",		to: "contacts#new"
  post "contact",		to: "contacts#create", :as => :contacts
  
  get "apply",		to: "applies#new"
  post "apply",		to: "applies#create", :as => :applies
  

  get "yoga-teacher-training", to: "pages#ytt", :as => :ytt
	  get "200-hour", to: "pages#ytt200", :as => :ytt200
	  get "500-hour", to: "pages#ytt500", :as => :ytt500
	  get "in-depth", to: "pages#yttdepth", :as => :yttdepth
	  get "registration", to: "pages#yttreg"
	  #get "apply", to: "pages#yttapply"
	  get "faq", to: "pages#yttfaq"
	  get "testimonials", to: "pages#yttsay"
  
  get "topics", to: "pages#topics"
  get "booking-mark", to: "pages#book", :as => :book
  get "classes", to: "pages#classes"
  get "new-to-yoga", to: "pages#newtoyoga", :as => :newtoyoga
  get "santa-cruz-yoga", to: "pages#scyoga", :as => :scy
  get "resources", to: "pages#resources"
  #get "video", to: "pages#video"
  #get "audio", to: "pages#audio"
  get "reading", to: "pages#reading"
  #get "images", to: "pages#images"
  get "schools", to: "pages#school"
  get "blog", to: "pages#blog"
  
  

  #Authentication OR Home
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  #Devise User
  devise_for :users, :controllers => { :registrations => 'registrations' }
  
  #Devise Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  #Update card
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users
  
end