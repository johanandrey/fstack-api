class BuenaAccion < ApplicationRecord
  belongs_to :remitente, class_name: 'Usuario', foreign_key: 'remitente_id'
  belongs_to :receptor, class_name: 'Usuario', foreign_key: 'receptor_id'
end
