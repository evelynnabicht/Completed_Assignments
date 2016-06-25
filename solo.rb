# EVELYN NABICHT
# 6.4 Solo Challenge

#Release 0 - Design a class
#3 attributes
#3 methods (one with argument)

#Release 1 -Write Your Class
#Implement your class
#include - att_reader, attr_accessor, and initialize

#Release 2 - Use Your Class in a Program
#User interface via command line
#User should be allowed to create as many instances of your class
#Prompt user for each attribute and store these class instances into an array
#when user indicates finished creating instances, loop through an array and print out the attributes of each instances

class Movies
  attr_reader :director
  attr_accessor :genre, :runtime, :rated, :title, :criticreview

#Method initilizing attributes
  def initialize(genre, runtime, rated, title, director, criticreview)
    @genre = genre
    @runtime = runtime.to_f
    @rated = rated
    @title = title
    @director = director
    @criticreview = criticreview
  end
#method that takes an argument
  def critics(reviews)
    @criticreview = reviews
  end
#method to print results
  def show_movies
    puts "****************************"
    puts "****************************"
    puts "Movie Information: "
    puts "Title: #{@title}"
    puts "Rated: #{@rated}"
    puts "Director: #{@director}"
    puts "Runtime: #{@runtime} Hours"
    puts "Reviews: #{@criticreview}"
    puts "****************************"
    puts "****************************"
  end
end

#driver codes to prompt user to input information
movie_array = []
answers = ""
while answers != 'done'
  puts "What is the name of the movie?"
  movie_title = gets.chomp.capitalize
  puts "What is the genre?"
  movie_genre = gets.chomp.capitalize
  puts "What is it rated?"
  movie_rated = gets.chomp.upcase
  puts "What is the runtime?(HH:MM)"
  movie_runtime = gets.chomp.to_f
  puts "Who is the director of this movie?"
  movie_director = gets.chomp.capitalize
  puts "Please critic this movie for all to see."
  reviews = gets.chomp.to_s
  movie_instance = Movies.new(movie_genre, movie_runtime, movie_rated, movie_title, movie_director, reviews)
  puts "Would you like to add another movie? Otherwise, please type 'done' when you're finished."
  answers = gets.chomp.downcase
  movie_array << movie_instance
end

#prints user input information by calling the method in the class 
puts movie_array.each{|movie| movie.show_movies}
Status API Training Shop Blog About

example_genders = ["female", "male", "gender fluid", "N/A", "don't know"]

