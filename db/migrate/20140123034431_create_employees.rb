class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :pay_rate
      t.date :hire_date
      t.date :end_date

      t.timestamps
    end
  end
end
