Rails.application.routes.draw do

  # Ruta para todos los servicios de usuarios
  resources :usuarios

  # autenticación
  post 'auth_user' => 'authentication#authenticate_user'
  post 'descifrar' => 'authentication#descifrar_token'

  # ruta que solicita el JWT
  get 'home' => 'home#index'
  
end