#4.3 Pairing

# create questions for user
puts "What is the hamster's name?"
name = gets.chomp.capitalize

puts "On a scale of 1 to 10, how loud does #{name} squeak?"
squeak_volume = gets.chomp.to_i

puts "What is the #{name}'s fur color?"
fur_color = gets.chomp

puts "Is the #{name} a good candidate for adoption?"
adoptable = gets.chomp

puts "What is the #{name}'s estimated age? If you really don't know, just enter '0'."
hamster_age = gets.chomp.to_i
  
  # return nil if age not entered 
  if hamster_age == 0
    hamster_age = nil
  end
  
# print user input in sentences
puts "This hamsters name is #{name}." 
puts      "#{name}'s squeak level is #{squeak_volume}."
puts    "#{name}'s fur color is #{fur_color}."
puts  "Is #{name} a good candidate for adoption?
            #{adoptable}"
puts "#{name}'s estimated age is #{hamster_age}"

