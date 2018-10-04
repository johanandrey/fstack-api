class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :documento_identificacion
      t.string :email
      t.decimal :telefono, precision: 10, scale: 0
      t.integer :puntaje_total
      t.integer :puntaje_disponible

      t.timestamps
    end
  end
end
