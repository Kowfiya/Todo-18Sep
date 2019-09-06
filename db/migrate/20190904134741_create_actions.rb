class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.boolean :finish
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
