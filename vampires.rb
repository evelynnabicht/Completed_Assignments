puts "How many employees will be processed?"
employees = gets.chomp.to_i
num_cycles = 0;

while num_loops < employees



puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
input = gets.chomp


puts "Our company cafeteria serves garlic bread. Should we order some for you?"
order = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

allergy = ""
    while allergy != "done" && allergy != "sunshine"
        puts "Enter allergy then press enter (type 'done' when finished)"
        allergy = gets.chomp
    end
 
 if allergy == "sunshine"
        puts "Probably a vampire"
    else
    case 
    
    if age.to_i > 100 && (wants_garlic == "yes" || wants_health_insurance == "yes")
            puts "Probably not a vampire."
    
    elsif age.to_i < 100 && (wants_garlic == "no" || wants_health_insurance == "no")
            puts "Probably a vampire."
    
    elsif age.to_i < 100 && wants_garlic == "no" && wants_health_insurance == "no"
            puts "Almost certainly a vampire."
    
    elsif name == "Drake Cula" || name == "Tu Fang"
            
            puts "Definitely a vampire."
        
        else
            puts "Results inconclusive."
        
        end
    end

    num_cycles += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
