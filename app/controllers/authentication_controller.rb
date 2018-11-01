class AuthenticationController < ApplicationController

    def authenticate_user
      user = User.find_for_database_authentication(email: params[:email])
      if user.valid_password?(params[:password])
        render json: payload(user)
      else
        render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
      end
    end

    def descifrar_token
        token = params[:token]
        puts "token recibido" , token
        descifrado = JsonWebToken.decode(token)
        puts "descifrado: " , descifrado
    end

  
    private
    def payload(user)
      if user.nil? and user.id.nil?
        puts " vacio"
      else
        {
        auth_token: token,
        user: {id: user.id, email: user.email}
        }
      end
    end
  end