puts "Welcome to the Tip Calculator! Let's get started!"
puts "What was the amount of the bill?"
bill = gets.to_f
puts "How good was the service? 0-5. 5 being the best!"
rating = gets.to_i
case rating
when 0
	multiplier = 0
when 1
	multiplier = 0.05
when 2
	multiplier = 0.10
when 3
	multiplier = 0.15
when 4
	multiplier = 0.20
when 5
	multiplier = 0.25
else
	puts "Invalid number!"
end
total = bill + bill * multiplier
puts "Suggested total is #{total} with a tip of #{bill * multiplier}"