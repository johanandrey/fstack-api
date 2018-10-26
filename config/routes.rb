Rails.application.routes.draw do

  
  resources :buena_accions
  resources :usuarios
  resources :tipo_documentos
  # Ruta para todos los servicios de usuarios

  # autenticación
  post 'auth_user' => 'authentication#authenticate_user'
  post 'descifrar' => 'authentication#descifrar_token'

  # ruta que solicita el JWT
  get 'home' => 'home#index'
  
  get 'current' => 'usuarios#current'
end