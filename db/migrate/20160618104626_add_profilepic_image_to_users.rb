class AddProfilepicImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profilepic, :image
  end
end
