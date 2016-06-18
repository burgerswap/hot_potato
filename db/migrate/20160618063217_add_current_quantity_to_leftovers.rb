class AddCurrentQuantityToLeftovers < ActiveRecord::Migration
  def change
    add_column :leftovers, :current_quantity, :integer
  end
end
