require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@stores1 = Store.sum('annual_revenue')
puts @stores1
@stores2 = Store.average('annual_revenue')
puts @stores2
@stores3 = Store.where("annual_revenue >?",1000000)
puts @stores3.count