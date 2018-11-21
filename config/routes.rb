Rails.application.routes.draw do
  devise_for :users
  resources :posts do 
  	resources :comments
  	resources :photos
  end
  root 'posts#index'
end
