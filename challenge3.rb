# Title:  [2/11/2012] Challenge #3 [easy]
# Text:  Welcome to cipher day!

# write a program that can encrypt texts with an alphabetical caesar cipher. This cipher can ignore numbers, symbols, and whitespace.

# for extra credit, add a "decrypt" function to your program!

#Initialize alphabet and encrypted text 
@alphabet = ("a".."z").to_a

def encrypt
	encrypted_text = ""
	#get text string
	puts "Enter the text to encrypt"
	original_text = gets.chomp.downcase
	#get number of places to shift alphabet
	puts "Enter the amount of characters to shift"
	shift_amount = gets.to_i

	#converts the string to an array so we can interact with each letter indiviually
	original_text = original_text.split('')
	#compare letter to index in alphabet
	original_text.each do |character|
		#original_text + shift_amount mod 26
		if @alphabet.index(character)
			cipher_index = (@alphabet.index(character) + shift_amount) % 26
			new_letter = @alphabet[cipher_index]
			#take each letter and put it into the string of encrypted text
			encrypted_text << new_letter
		else
			encrypted_text << character
		end
	end

	#output the encrypted text.
	puts "Your encrypted string is #{encrypted_text}"
end

def decrypt
	decrypted_text = ""
	#get text string
	puts "Enter the text to decrypt"
	encrypted_string = gets.chomp

	#get number of places to shift alphabet
	puts "Enter the amount of characters to shift"
	shift_amount = gets.to_i

	#converts the string to an array so we can interact with each letter indiviually
	encrypted_string = encrypted_string.split('')

	encrypted_string.each do |character| 
		#encrypted-string - shift_anount mod 26
			if @alphabet.index(character)
			cipher_index = (@alphabet.index(character) - shift_amount) % 26
			new_letter = @alphabet[cipher_index]
			#take each letter and put it into the string of encrypted text
			decrypted_text << new_letter
		else
			decrypted_text << character
		end
	end
	#output the decrypted text.
	puts "Your decrypted string is #{decrypted_text}"
end

#Start program
puts "Would you like to (e)ncrypt or (d)ecrypt?"
direction = gets.chomp

if direction == 'e'
	encrypt
elsif direction == 'd'
	decrypt
else 
	puts "Invalid commmand please run again"
end



