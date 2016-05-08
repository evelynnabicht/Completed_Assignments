# ask user for input

puts "Please enter a random word:"
random_word = gets.chomp

#define encrypt method

def encrypt(word)
 index = 0

 while index < word.length
  word[index] = word[index].next!
  index += 1
 end
 puts "#{word}"
end

#define encrypt method

def decrypt(word)
 index = 0
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 while index < word.length
  letter = alphabet.index(word[index])
  word[index] = alphabet[(letter-1)]
  index += 1
 end
 puts "#{word}"
end

# ask user what they would like to do to the input

puts "Would you like to encrypt or decrypt it?"
choice = gets.chomp

if choice == "encrypt"
 encrypt(random_word)
elsif choice == "decrypt"
 decrypt(random_word)
else 
 puts "I didn't quite catch that... try again"
 start
end
