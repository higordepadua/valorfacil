class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :description, :null => false
      t.date :startDate, :null => false
      t.date :endDate
      t.integer :frequency
      t.boolean :isRepeatable
      t.float :expectedAmount
      t.integer :importanceRate

      t.timestamps null: false
    end
  end
end
