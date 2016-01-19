class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :first_item
      t.integer :second_item
      t.integer :third_item
      t.string :name
      t.string :created_time

      t.timestamps null: false
    end
  end
end
