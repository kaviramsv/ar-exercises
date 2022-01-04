require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store1=Store.find_by(id: 1)
@store1.employees.create( last_name: "Virani", hourly_rate: 60)
puts Employee.count