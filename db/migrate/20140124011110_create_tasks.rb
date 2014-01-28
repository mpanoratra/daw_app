class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :unit_id
      t.string :trade
      t.string :budget

      t.timestamps
    end
  end
end
