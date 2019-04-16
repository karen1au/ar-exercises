require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mona", last_name: "Lisa", hourly_rate: 40)
@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Tom", last_name: "Ford", hourly_rate: 60)
@store2.employees.create(first_name: "Van", last_name: "Gogh", hourly_rate: 80)
@store2.employees.create(first_name: "Coco", last_name: "Chanel", hourly_rate: 50)
@store2.employees.create(first_name: "Louis", last_name: "Vuitton", hourly_rate: 70)
@store2.employees.create(first_name: "Alexander", last_name: "McQueen", hourly_rate: 80)
