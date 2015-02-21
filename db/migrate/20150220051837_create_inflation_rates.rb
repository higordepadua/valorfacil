class CreateInflationRates < ActiveRecord::Migration
  def change
    create_table :inflation_rates do |t|
      t.integer :month
      t.integer :year
      t.float :percent

      t.timestamps null: false
    end
  end
end
