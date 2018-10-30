class Usuario < ApplicationRecord
  belongs_to :tipo_documento
  before_save { self.email = email.downcase }
  

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX, message: 'Su email no es válido' }, uniqueness: true
  validates :password, length: { minimum: 8, message: 'Su clave debe tener al menos 8 caracteres' }
  has_secure_password
end
