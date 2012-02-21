KurbiBeta::Application.routes.draw do
  resources :members do
    resources :journal, :history
  end

  root :to => 'pages#home'
  match '/public/about',   :to => 'pages#about',    :as => 'about'
  match '/public/home',    :to => 'pages#home',     :as => 'home'
  match '/public/contact', :to => 'pages#contact',  :as => 'contact' 
  match '/member/signup',  :to => 'members#new',    :as => 'signup'
  match '/member/signin',  :to => 'sessions#new'
  match '/member/signout', :to => 'sessions#destroy'
  
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
