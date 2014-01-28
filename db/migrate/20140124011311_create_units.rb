class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :project_id
      t.string :name_or_address
      t.string :type

      t.timestamps
    end
  end
end
