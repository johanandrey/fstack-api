class JsonWebToken

  
  def self.encode(payload)
    exp = 2.hours.from_now
    payload[:exp] = exp.to_i
    jwt_pk = Rails.application.credentials[Rails.env.to_sym][:jwt_private_key]
    token = JWT.encode(payload, jwt_pk)
    return token
  end
  
  def self.decode(token)
    jwt_pk = Rails.application.credentials[Rails.env.to_sym][:jwt_private_key]
    body = JWT.decode(token, jwt_pk)[0]
    HashWithIndifferentAccess.new body
   rescue
     nil
   end
  
end
  