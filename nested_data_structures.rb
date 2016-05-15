shopping_mall = {
  forever_21: {
    real_name: 'Forever 21',
    top_selling_items: {
      "Tops" => "Flower Blouse",
      "Bottoms" => "Leather Pants",
      "Shoes" => "Chunky Heels",
      "Accessories" => "Cat Earrings"
    },
    style: 
      ["Trendy young people clothes"]
      

  },
  abercrombie_fitch: {
    real_name: 'Abercrombie and Fitch',
    top_selling_items: {
      "Tops" => "Cropped Tank-Top",
      "Bottoms" => "Skinny Jeans",
      "Shoes" => "Flip-Flops",
      "Accessories" => "Women's Perfume"
    },
    style: 
      ["Overpriced preppy clothing for teenagers"]
    

  },
pac_sun: {
  real_name: 'Pac Sun',
  top_selling_items: {
    "Tops" => "Ripped Jacket",
    "Bottoms" => "Jeggings",
    "Shoes" => "Vans",
    "Accessories" => "Skateboard Trucks"
  },
  style: 
    ["Clothing for skater kids who don't care about mainstream culture"]
    
  },
}

puts "What is Forever 21's style?"
p shopping_mall[:forever_21][:style]
puts ""

puts "Please delete the current style for Pac Sun"
shopping_mall[:pac_sun][:style].delete("Clothing for skater kids who don't care about mainstream culture")
puts ""

puts "Please add a new style for Pac Sun"
shopping_mall[:pac_sun][:style].push("California-inspired apparel")
puts ""

puts "Your new style for Pac Sun is:"
p shopping_mall[:pac_sun][:style]
puts ""

puts "what is the first thing listed under Abercrombie and Fitch's top selling items?"
p shopping_mall[:abercrombie_fitch][:top_selling_items].first
puts ""
