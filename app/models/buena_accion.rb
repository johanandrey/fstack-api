class BuenaAccion < ApplicationRecord
  #belongs_to :remitente
  #belongs_to :receptop

  belongs_to :remitente, :class_name => "Usuario"
  belongs_to :receptor, :class_name => "Usuario"
end
