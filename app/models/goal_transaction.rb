class GoalTransaction < ActiveRecord::Base
  belongs_to :goal
  enum transactionType: [:withdraw, :deposit]
end
