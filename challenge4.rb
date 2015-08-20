# Title:  [2/12/2012] Challenge #4 [easy]
# Text:  You're challenge for today is to create a random password generator! 

# For extra credit, allow the user to specify the amount of passwords to generate.

# For even more extra credit, allow the user to specify the length of the strings he wants to generate!

#set rules for passwords
#a..z, A..Z, 0..9, Alphanumerics into an array
letter_list = ("a".."z").to_a + ("A".."Z").to_a
number_list =("0".."9").to_a
alphanumeric_list = []
master_list = letter_list + number_list
master_index = master_list.count
#Get # of passwords needed
puts "Enter the amount of passwords needed"
amount = gets.to_i
#Get length needed for passwords
puts "Enter the length of password needed"
length = gets.to_i

#Get #{length} number of random characters 
#rand(limit) will give you 0..limit-1 values
counter = 0
while counter < amount do
	
	counter+=1
end

puts "Here are your passwords: "