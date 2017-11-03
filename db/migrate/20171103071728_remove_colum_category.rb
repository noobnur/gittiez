class RemoveColumCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :category
  end
end
