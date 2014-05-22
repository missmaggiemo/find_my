YelpApp::Application.routes.draw do
  
  root 'searches#new'
  
  devise_for :users
  
  resources :users
  
  resources :businesses, only: [:show]

  resources :searches, only: [:create, :new, :show]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
