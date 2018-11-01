class AddSomeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :id_number, :string
    add_index :users, :id_number, unique: true
    add_column :users, :phone, :decimal, precision: 10, scale: 0
    add_column :users, :total_score, :integer
    add_column :users, :available_score, :integer
  end
end
