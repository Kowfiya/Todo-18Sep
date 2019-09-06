class AddDefaultToFinish < ActiveRecord::Migration[5.1]
  def change
    remove_column :actions, :finish
  end
end
