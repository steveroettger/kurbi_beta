KurbiBeta::Application.routes.draw do
  get "sessions/new"

  #resources :members do
  #  resources :journal, :history
  #end	
  resources :members
  resources :sessions,   :only => [:new, :create, :destroy]
  
  root :to => 'pages#home'
  match '/public/about',   :to => 'pages#about',      :as => 'about'
  match '/public/home',    :to => 'pages#home',       :as => 'home'
  match '/public/contact', :to => 'pages#contact',    :as => 'contact' 
  match '/member/signup',  :to => 'members#new',      :as => 'signup'
  match '/member/signin',  :to => 'sessions#new',     :as => 'signin'
  match '/member/signout', :to => 'sessions#destroy', :as => 'signout'
  
  # root :to => 'pages#index'
  #   
  #   match '/public/home/:page', :to => 'pages#index'
  #   
  #   match '/public/about', :to => 'pages#about', :as => 'about'
  #  match '/public/home', :to => 'pages#home', :as => 'home'
  #   match '/public/contact', :to => 'pages#contact', :as => 'contact'
  #   
  #   match '/public/:page', :to => 'pages#index'	
     
end
