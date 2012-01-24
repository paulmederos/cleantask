Cleantask::Application.routes.draw do

  root :to => "pages#home"
  
  # Devise for User authentication + session management
  devise_for :users, :controllers => { :registrations => 'registrations' }
  
  devise_scope :user do
     match "/signup" =>  "devise/registrations#new", :as => :signup
     match "/signin" =>  "devise/sessions#new", :as => :signin
     match '/edit-profile', :to => 'registrations#edit', :as => :edit_profile
  end
    match "/signout" => "sessions#destroy", :as => :signout
  
  resources :users
  resources :clients
  resources :facilities
  resources :areas
end
