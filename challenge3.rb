# Title:  [2/11/2012] Challenge #3 [easy]
# Text:  Welcome to cipher day!

# write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.

# for extra credit, add a "decrypt" function to your program!

#Initialize alphabet and encrypted text 
alphabet = ("a".."z").to_a
encrypted_text = ""
#get text string
puts "Enter the text to encrypt"
original_text = gets.chomp.downcase
#get position to shift alphabet
puts "Enter the amount of characters to shift"
shift_amount = gets.to_i

#converts the string to an array so we can interact with each letter indiviually
original_text = original_text.split('')
#compare letter to index in alphabet

original_text.each do |letter|
	#encrypt 
	#original_text + shift_amount mod 26
	cipher_index = (alphabet.index(letter) + shift_amount) % 26
	new_letter = alphabet[cipher_index]
	#take each letter and put it into the string of encrypted text
	encrypted_text << new_letter
end

#decrypt
#original_text - shift_anount mod 26

#output the encrypted text.
puts "Your encrypted string is #{encrypted_text}"
