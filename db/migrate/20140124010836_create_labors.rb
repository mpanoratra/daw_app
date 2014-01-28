class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.integer :employee_id
      t.string :hours
      t.date :date_of_labor
      t.integer :task_id

      t.timestamps
    end
  end
end
