require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"
@store1.employees.create!(first_name: "Karen", last_name: "Lau", hourly_rate: 60, password: "12345678")
me = Employee.find_by_first_name("Karen")
puts me.password