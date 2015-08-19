# ﻿Title:  [easy] challenge #1
# Text:  create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format:

#     your name is (blank), you are (blank) years old, and your username is (blank)

# for extra credit, have the program log this information in a file to be accessed later.

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