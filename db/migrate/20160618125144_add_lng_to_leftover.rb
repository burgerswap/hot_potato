class AddLngToLeftover < ActiveRecord::Migration
  def change
    add_column :leftovers, :lng, :float
  end
end
