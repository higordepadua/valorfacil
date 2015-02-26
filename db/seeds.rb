# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

goals = Goal.create( :description=>"Imovel", :startDate => Date.new(2015, 02, 20), :endDate => Date.new(2019, 02, 20), :frequency => 1, :isRepeatable => false, :expectedAmount => 10000.00, :importanceRate => 4)
