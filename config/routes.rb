YelpApp::Application.routes.draw do
  
  root 'searches#new'
  
  get 'home', to: 'static_pages#home'
  
  devise_for :users
  
  resources :users
  
  resources :businesses, only: [:show]

  resources :searches, only: [:create, :new, :show]
  
  resources :favorites, only: [:create, :destroy]
  
  resources :ratings, only: [:create]
  
  resources :friendships, only: [:create, :destroy]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
