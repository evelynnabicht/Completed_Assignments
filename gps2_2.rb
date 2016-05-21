# Method to create a list
#Establish method for grecery list
def grocery_list(list, grocery_hash = {})
#Creating array
 list_array = list.split(" ")
#Set deafault quanity 
 quantity = 1
#call the method
  list_array.each do |item| 
  grocery_hash[item] = quantity
end
#printing list
puts grocery_hash
return grocery_hash
end
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
#Create method without specific items
#Add items without quanity
# input: item name and optional quantity
# steps:
# output:
def add_item(item, grocery_hash = {})
 grocery_hash.merge! ({item => 1})
end

# Method to remove an item from the list
# input:
# steps:
# output:
def remove_item(item, grocery_hash = {})
 grocery_hash.delete_if{|food,quanity| food == item}
end

# Method to update the quantity of an item
def update_quantity(item, grocery_hash = {}, quantity)
 if grocery_hash.include? (item)
  grocery_hash[item] = quantity
 end
 return grocery_hash
end
# input:
# steps:
# output:

# Method to print a list and make it look pretty
def pretty_list(grocery_hash = {})
 puts ":)"
 puts "Grocery list:"
 grocery_hash.each do |food, quantity| puts "#{food}: #{quantity}"
 end
puts ""
end
# input:
# steps:
# output:

#driver code
hash = {}
list_string = "carrots apples cereal pizza"
create_list(list_string, hash)
add_item("tomatoes", hash)
add_item("lemonade" ,hash)
add_item("onions" ,hash)
add_item("icecream" ,hash)
update_quantity("tomatoes", hash, 3)
update_quantity("lemonade" ,hash, 2)
update_quantity("onions" ,hash, 1)
update_quantity("icecream" ,hash, 4)
remove_item("lemonade", hash)
update_quantity("icecream", hash, 1)
print_list(hash)
