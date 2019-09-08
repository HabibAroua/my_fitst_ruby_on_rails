Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'habib/login'
  get 'habib/index'
  get 'habib/welcome'
  
  root to: "habib#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
