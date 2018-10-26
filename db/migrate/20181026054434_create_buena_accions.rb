class CreateBuenaAccions < ActiveRecord::Migration[5.2]
  def change
    create_table :buena_accions do |t|
      t.string :descripcion
      t.integer :puntaje
      t.references :remitente
      t.references :receptor
      t.timestamps
    end

    add_foreign_key :buena_accions, :usuario, column: remitente_id, primary_key: :id
    add_foreign_key :buena_accions, :usuario, column: receptor_id, primary_key: :id
  end
end
