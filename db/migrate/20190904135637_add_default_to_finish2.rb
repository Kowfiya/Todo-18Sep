class AddDefaultToFinish2 < ActiveRecord::Migration[5.1]
  def change
    add_column :actions, :finish, :boolean, default: false
  end
end
