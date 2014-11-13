class CreateFilterRules < ActiveRecord::Migration
  def change
    create_table :filter_rules do |t|
      t.string :contains
      t.integer :budget_code_id

      t.timestamps
    end
  end
end
