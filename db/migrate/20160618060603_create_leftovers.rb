class CreateLeftovers < ActiveRecord::Migration
  def change
    create_table :leftovers do |t|
      t.string :title
      t.string :address
      t.string :location
      t.integer :pincode
      t.integer :quantity
      t.string :food_type
      t.string :available_from
      t.string :available_to
      t.string :status

      t.timestamps null: false
    end
  end
end
