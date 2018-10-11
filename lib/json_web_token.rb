class JsonWebToken

  @ecdsa_public = ""
  
  def self.encode(payload)
     ecdsa_key = OpenSSL::PKey::EC.new 'prime256v1'
     ecdsa_key.generate_key
     @ecdsa_public = OpenSSL::PKey::EC.new ecdsa_key
     @ecdsa_public.private_key = nil
     token = JWT.encode payload, ecdsa_key, 'ES256'
     return token
   end
  
  def self.decode(token)
    puts "llave ecdsa"
    puts @ecdsa_public
    decoded_token = JWT.decode token, @ecdsa_public, true, { algorithm: 'ES256' }
    puts "-------------------------------"
    puts "DECODED TOKEN"
    puts decoded_token
    return decoded_token 
  rescue
    nil
  end
  
end
  