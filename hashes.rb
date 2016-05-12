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

def changes(interior_design)
puts "would you like to make any changes?"
changes = gets.chomp
  if changes != "no"
    puts "What would you like to change?"
    answer = changes.chomp
    interior_design[answer] = gets.chomp
  else
    puts "Here is the client's current information:"
    put interior_design
end