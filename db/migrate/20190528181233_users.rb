class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.text :name
      t.integer :money
    end
  end
end
