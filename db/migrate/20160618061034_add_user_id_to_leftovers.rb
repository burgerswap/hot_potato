class AddUserIdToLeftovers < ActiveRecord::Migration
  def change
    add_column :leftovers, :user_id, :integer
  end
end
