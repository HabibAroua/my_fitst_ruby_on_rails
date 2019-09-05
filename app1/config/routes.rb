Rails.application.routes.draw do
  resources :posts
  resources :users
  #post '/users/hello', to: 'users#hello'
  post '/users/habib' , to: 'users#habib'
  get 'users/:id/habib', to: 'users#habib'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlzz
end
