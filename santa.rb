# 6.3
# Release 0

class Santa
# refactor with attr_reader and attr_accessor
attr_reader :name, :gender, :ethnicity
attr_accessor :gender, :age


  def initialize(name, gender, ethnicity)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    puts "Initializing Santa instance ... "
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end

  def greeting(int)
    int.times{puts "Merry Christmas!"}
  end

  
end

# attribute-changing methods
def celebrate_birthday
    @age += 1
  end

# take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings
def get_mad_at(trouble_deer)
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  if reindeer_ranking.include?(trouble_deer)
    move_deer = reindeer_ranking.delete(trouble_deer)
    reindeer_ranking << move_deer
   puts "********************************************"
      puts "New Ranking: "
      reindeer_ranking.each do |name|
        puts "#{name}"
      end
    else
        puts "#{reindeer_ranking}"
    end
    puts "********************************************"
  end

#Setter Method for changing gender outside of the class
def gender=(new_gender)
  @gender = new_gender
end

# getter methods
def age
  @age
end

def ethnicity
  @ethnicity
end

#Santa simulator that allows you to print the names, gender, and ethnicity of santa and reindeer.
def santa_reindeers(num_instances)
#set arrays of name, gender, and ethnicities to put new information into santa array.
  santa = []
  santa_names = ["Santa Claus", "Mrs Claus", "Reindeer Claus", "George Claus", "Claus Who", "Evil Santa", "Santa Scrooge"]
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "trans", "don't know"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Scottish", "Pinoy"]
 #calculates the length of the arrays in order to print listed in arrays.
  name_num = santa_names.length
  gender_num = example_genders.length
  ethnic_num = example_ethnicities.length

 #put existing arrays into new array santa separated by three different categories and prints at random in each category
  num_instances.times do
    santa << Santa.new(santa_names[rand(name_num)], example_genders[rand(gender_num)], example_ethnicities[rand(ethnic_num)])
  end

 #gives the santa's age at random up until age 140.
  santa.each {|santa_instance|  santa_instance.age = rand(140) }

  puts "***********************************************"
  puts "***********************************************"

  #Printing out the attributes of every Santa instance
  santa.each do |instance|
                puts "Santa's name is #{instance.name}"
    puts "Gender is #{instance.gender.capitalize}"
    puts "Ethnicity is #{instance.ethnicity.capitalize}"
    puts "Age is #{instance.age} years old."
    puts ""
  end
  puts "***********************************************"
  puts "***********************************************"
end


 #driver code to test data
santaclass = Santa.new("","","")
santaclass.speak
santaclass.eat_milk_and_cookies("snickerdoodle")
get_mad_at("Vixen")
santa_reindeers(10)
