# get the spy's name
puts "What is your first name?"
first_name = gets.chomp.capitalize
puts ""

puts "What is your last name?"
last_name = gets.chomp.capitalize
puts ""

# swapping first and last name
puts "Your real full name is: #{last_name}, #{first_name}"
puts ""

# creating a method that swaps letters to either next vowel or next consonant

def letter_swap(agent_name)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  letter_swap = agent_name.split("")
  secret_name = []
  letter_swap.map! do |ltr|
    if vowels.include?(ltr)
      secret_name << vowels[vowels.index(ltr)+1]
    elsif consonants.include?(ltr)
      secret_name << consonants [consonants.index(ltr)+1]
    else
      puts " "
    end
  end

  secret_name.join("").split.map {|ltr| ltr.capitalize}.join(" ").capitalize

end

#making a hash

agent_answer = {}

answer = ""

puts "Ready for a secret agent name? (Yes/No)"
answer = gets.chomp.downcase
puts ""

# loop

while (answer != "no") do

  puts "What is your first name?"
  name1 = gets.chomp.downcase
  puts ""

  puts "What is your last name?"
  name2 = gets.chomp.downcase
  puts ""

  agent_name = name1 + name2

  puts "Your secret agent name is: " + letter_swap(agent_name)
  puts ""

puts "Do you want a different name? (Yes/No)"
answer = gets.chomp.downcase

agent_answer[agent_name] = letter_swap(agent_name)
end

#print new name

puts ""
agent_answer.each do |x, y| puts "#{x} is actually #{y}!"


end





