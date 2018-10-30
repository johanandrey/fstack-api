class CreateBuenaAccions < ActiveRecord::Migration[5.2]
  def change
    create_table :buena_accions do |t|
      t.string :descripcion
      t.integer :puntaje
      t.references :remitente
      t.references :receptor

      t.timestamps
    end
  end
end
