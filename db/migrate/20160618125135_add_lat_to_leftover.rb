class AddLatToLeftover < ActiveRecord::Migration
  def change
    add_column :leftovers, :lat, :float
  end
end
