Cleantask::Application.routes.draw do
  resources :notices

  root :to => "pages#home"
  
  # Devise for User authentication + session management
  devise_for :users, :controllers => { :registrations => 'registrations' }
  
  devise_scope :user do
     match "/signup" =>  "devise/registrations#new", :as => :signup
     match "/signin" =>  "devise/sessions#new", :as => :signin
     match '/edit-profile', :to => 'registrations#edit', :as => :edit_profile
     match "/signout" => "sessions#destroy", :as => :signout
  end
  
  resources :users
  resources :clients
  resources :facilities
  resources :inspections, :except => :index
  resources :areas
  resources :questions, :except => [:index, :show]
  resources :answers, :only => [:create, :update]
end
