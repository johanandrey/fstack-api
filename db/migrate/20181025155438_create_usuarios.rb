class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :documento_identificacion
      t.references :tipo_documento, foreign_key: true
      t.string :email
      t.string :password_digest
      t.decimal :telefono, precision: 10, scale: 0
      t.integer :puntaje_total
      t.integer :puntaje_disponible

      t.timestamps
    end
    add_index :usuarios, :documento_identificacion, unique: true
    add_index :usuarios, :email, unique: true
  end
end
