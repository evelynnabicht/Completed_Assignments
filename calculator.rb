#set methods

class Calculator
def variables (a,b)
@a = a,
@b = b
end
def add(a, b)
a+b
end
def subtract(a, b)
a-b
end
def multiply(a,b)
a*b
end
def divide (a,b)
a/b
end
end


puts "Enter an expression"
# set up input type
a = gets.chomp.gsub(/\s+/, "") 
puts case a[1]

  # call method
when "+"
    "#{a[0]} + #{a[2]} = #{Calculator.new.add(a[0].to_f,a[2].to_f)}"
when "-"
    "#{a[0]} - #{a[2]} = #{Calculator.new.subtract(a[0].to_f,a[2].to_f)}"
when "*" || "x" || "X"
    "#{a[0]} x #{a[2]} = #{Calculator.new.multiply(a[0].to_f,a[2].to_f)}"
when "/"
    "#{a[0]} / #{a[2]} = #{Calculator.new.divide(a[0].to_f,a[2].to_f)}"
else 
  puts "not valid"
end



