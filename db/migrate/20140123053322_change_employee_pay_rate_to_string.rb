class ChangeEmployeePayRateToString < ActiveRecord::Migration
  def change
    change_column :employees, :pay_rate, :string
  end
end
