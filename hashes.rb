#Getting the information from the client
puts "Name of client:"
name = gets.chomp.capitalize
puts "Number of children in the client's household:"
children = gets.chomp.to_i
puts "Age of client:"
age = gets.chomp.to_i
puts "Client's decor theme:"
theme = gets.chomp 


#Hash that keeps the client's information
interior_design = {
  client_name: name,
  number_of_children: children,
  client_age: age,
  client_decor_theme: theme,
}

puts ""
puts "Client's information:"
interior_design.each {|x, y| puts "#{x}: #{y}" }

#print client information
p interior_design

#parameters for changes that might be made

def update_info(interior_design)
    interior_design[:name] = interior_design[:name]
    interior_design[:children] = interior_design[:children]
    interior_design[:age] = interior_design[:age]
    interior_design[:theme] = interior_design[:theme]
  return interior_design
end

#give user opportunity to make changes

def new_info(interior_design)
puts "What item do you want to change, otherwise type 'no changes'"
new_data = gets.chomp.downcase
if new_data != "no changes"
puts "What is the correct information?"
answer = new_data.chomp
interior_design[answer] = gets.chomp
else
puts interior_design
end
puts ""
return interior_design
end

#call the methods

updated_info = interior_design
updated_info = new_info(updated_info)
puts updated_info
new_info(updated_info)
updated_info = new_info(updated_info)
puts updated_info
puts ""
puts "Client's information:"
interior_design.each {|x, y| puts "#{x}: #{y}" }

