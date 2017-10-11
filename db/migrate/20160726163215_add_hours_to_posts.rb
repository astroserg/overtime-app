class AddHoursToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :hours, :decimal
  end
end
