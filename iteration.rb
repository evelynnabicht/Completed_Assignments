def status_message
  status1= "Great" 
  status2= "Wonderful"
  puts "I'm feeling #{status1} and #{status2} today!"
  yield(status1, status2)
end

status_message { |status1, status2| puts "I hope you're feeling #{status1} and #{status2} as well!" }

car_array=["Honda", "Chevy", "Ford", "BMW", "Subaru"]

car_hash={"Honda" => "Civic", "Chevy" => "Malibu", "Ford" => "Mustang", "BMW" => "i8", "Subaru" => "Impreza" }

puts "Before .each call: " 
p car_array

car_array.each do |make|
  car_array.delete_at(4)
  p make 
end
puts "After .each call: "
p car_array 


puts "Before .map! call: "
p car_array

car_array.map! do |model|
  puts model
  model.upcase
end
puts "After .map! call: "
p car_array 

puts "Before .each call: "
p car_hash

car_hash.each {|make, model|} 


car_hash.delete("Honda")
puts "After .each call:"
p car_hash


#Release 2

array = [1, 2, 3, 4, 5]
hash = {"cat"=>1, "dog"=>2, "bird"=>3, "frog"=>4, "pig"=>5}

array.delete_if {|number| number < 3}
p array

hash.delete_if {|x, y| y < 3}
p hash

array = [1, 2, 3, 4, 5]
hash = {"cat"=>1, "dog"=>2, "bird"=>3, "frog"=>4, "pig"=>5}

array.keep_if {|number| number > 3}
p array 

hash.keep_if {|x, y| y > 3}
p hash 

array = [1, 2, 3, 4, 5]
hash = {"cat"=>1, "dog"=>2, "bird"=>3, "frog"=>4, "pig"=>5}

array.select! {|number| number.odd? }
p array

hash.select! {|x, y| y.odd?}
p hash

array = [1, 2, 3, 4, 5]
hash = {"cat"=>1, "dog"=>2, "bird"=>3, "frog"=>4, "pig"=>5}

array.reject! {|number| number.odd?}
p array 

hash.reject! {|x, y| y.odd?}
p hash 
