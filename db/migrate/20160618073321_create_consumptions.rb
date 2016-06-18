class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.integer :leftover_id
      t.integer :quantity
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
