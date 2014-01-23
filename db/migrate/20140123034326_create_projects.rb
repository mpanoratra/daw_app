class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :proj_num
      t.string :contract_num
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
