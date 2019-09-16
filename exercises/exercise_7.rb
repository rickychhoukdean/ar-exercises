require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

# Your code goes here ...

pp "Please enter a store name"

storeName = gets.chomp

store = Store.create(name: "#{storeName}")
pp store.valid?
pp store.errors.messages
