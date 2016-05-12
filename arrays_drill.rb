grocery_list = []
grocery_list << "salad"
grocery_list << "milk"
grocery_list << "cheetos"
grocery_list << "juice"
grocery_list << "coffee"

p grocery_list

grocery_list.delete_at(2)

p grocery_list

grocery_list.insert(2, "carrots")

p grocery_list

grocery_list.shift

p grocery_list
 
question = grocery_list.include?("milk")

  if question 
          puts "It's on the list!"
  else
          puts "It's not on the list!"
  end

types_of_dogs = ["Cavalier King Charles Spaniel", "Yorkie", "Shitzhu/Poodle Mix"]
p types_of_dogs

new_array = grocery_list + types_of_dogs

p new_array
