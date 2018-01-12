class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :description
      t.float :amount

      t.timestamps
    end
  end
end
