class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string :name
      t.string :owner_or_ceo
      t.string :checks_payable_to

      t.timestamps
    end
  end
end
