#Creating a survey for vampire employees

require 'date'
current_year = Date.today.year
current_year = current_year.to_i

count = 0
puts "How many employees will you be enrolling?"
num_of_employees = gets.chomp.to_i

while count < num_of_employees
puts ""

#Retrieving data

puts "What is your name?"
name = gets.chomp.split(" ").map(&:capitalize).join(" ")

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp

#Testing Data

if age == current_year - year && (garlic_bread == "yes" || health_insurance == "yes")
    puts "Probably not a vampire."
  elsif age != current_year - year && (garlic_bread == "no" || health_insurance == "no")
    puts "Probably a vampire."
  elsif age != current_year - year && (garlic_bread == "no" && health_insurance == "no")
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
end

#checking for allergies

allergies = "sunshine"
user_input = " "
puts "Please list all your allergies and write 'Done' when you are done listing."
while user_input != "sunshine"
user_input = gets.chomp.downcase
break if user_input == "done"
end

if user_input == "sunshine"
  puts "Probably a vampire."
end

count += 1
end

#Ending

puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."
