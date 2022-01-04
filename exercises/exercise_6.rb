require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store 
  has_many :employees
  validates :name, length: {minimum: 3},
  validates :annual_revenue,:numericality=> {:greater_than_or_equal_to=>0}
end


class Employee 
  belongs_to :store
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :hourly_rate,:numericality=> {:greater_than_or_equal_to=> 40,:less_than_or_equal_to=>200}
  validates :store ,:presence=> true
end
@store1=Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Kv", last_name: "Vani", hourly_rate: 40)
puts Employee.count