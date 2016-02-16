class CreateBudgetinputs < ActiveRecord::Migration
  def change
    create_table :budgetinputs do |t|
      t.integer :city
      t.boolean :car
      t.boolean :house
      t.boolean :kids
      t.integer :age
      t.float :income
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
