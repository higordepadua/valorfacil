class CreateGoalTransactions < ActiveRecord::Migration
  def change
    create_table :goal_transactions do |t|
      t.references :goal, index: true
      t.string :description
      t.date :transactionDate
      t.float :amount
      t.integer :transactionType

      t.timestamps null: false
    end
    add_foreign_key :goal_transactions, :goals
  end
end
