class Goal < ActiveRecord::Base
	validates :description, :presence > true
	validates :startDate, :presence > true
	validates :expectedAmount, :presence > true

end
