class GoalTransaction < ActiveRecord::Base
  belongs_to :goal
  enum transactionType: [:withdraw, :deposit]
  validates :transactionDate, :presence > true
  validates :amount, :presence > true
  validates :transactionType, :presence > true	
end
