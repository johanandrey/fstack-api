Rails.application.routes.draw do

  resources :usuarios

  post 'auth_user' => 'authentication#authenticate_user'
  post 'descifrar' => 'authentication#descifrar_token'
  get 'home' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
