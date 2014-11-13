class CreateBudgetCodes < ActiveRecord::Migration
  def change
    create_table :budget_codes do |t|
      t.string :name

      t.timestamps
    end
  end
end
