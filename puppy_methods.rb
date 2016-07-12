# Mandatory Pairing 6.2

class Puppy
  def initialize 
    p "Initializing puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times{puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(h_years)
    dog_years = h_years/7
    puts "Your dog is #{dog_years} year(s) old!"
  end

  def play_dead
    puts "*acts dead*"
  end
end

# DRIVER CODE

puppy = Puppy.new
puppy.fetch("rope")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(10)
puppy.play_dead

# Release 2

class Kitten
  
  def initialize 
    p "Initializing new kitten instance..."
  end

  def meow(num)
    num.times{puts "Meow!"}
  end

  def look_cute 
    puts "*gazes up with cute eyes*"
  end

  def hiss(number)
    number.times{puts "HISSSSSSS!!!"}
end


kitten_array = []

i = 0
until i > 50
  kitten_array[i] = Kitten.new
  kitten_array << i
  i += 1
end

ObjectSpace.each_object Kitten do |data|
data.meow(2)
data.look_cute
data.hiss(5)
end


end
