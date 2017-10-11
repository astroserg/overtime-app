class RemoveHoursFromPosts < ActiveRecord::Migration[5.1]
  def change
  	remove_column :posts, :hours, :decimal
  end
end
