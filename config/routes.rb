YelpApp::Application.routes.draw do
  
  root 'searches#new'
  
  get 'home', to: 'static_pages#home'
  
  get 'users/username_search', to: 'users#username_results', as: 'user_results'
  
  get 'businesses/biz_name_search', to: 'businesses#biz_name_results', as: 'biz_results'
  
  devise_for :users
  
  resources :users, only: [:show, :update]
  
  get 'users/:id/feed', to: 'users#feed', as: 'user_feed'
  
  get 'users/:id/recommendation', to: 'users#recommendation', as: 'user_rec'
  
  resources :businesses, only: [:show]

  resources :searches, only: [:create, :new, :show]
  
  resources :favorites, only: [:create, :destroy]
  
  resources :ratings, only: [:create]
  
  resources :friendships, only: [:create, :destroy, :update]

  resources :recommendations, only: [:update]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
