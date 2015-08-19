puts "Please enter the follow values: "
puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age = gets.chomp
puts "What is your reddit username?"
username = gets.chomp
current_time = Time.new
File.open("challenge1.txt", "a") { |io| io.write("#{current_time}- Name: #{name}, Age: #{age}, Username #{username}") }
puts "Your name is #{name}, you are #{age} years old, and your username is #{username}"