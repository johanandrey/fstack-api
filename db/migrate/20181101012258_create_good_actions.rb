class CreateGoodActions < ActiveRecord::Migration[5.2]
  def change
    create_table :good_actions do |t|
      t.string :description
      t.integer :score
      t.references :sender
      t.references :receiver

      t.timestamps
    end
  def change
      add_foreign_key :sender, :user
      add_foreign_key :receiver, :user
    end
  end
end
