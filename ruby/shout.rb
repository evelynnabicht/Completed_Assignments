#Create a mixin module that applies to any class that Shouts
module Shout

#nitial module
=begin
    def self.yell_angrily(words)
      words + "!!!" + " :("
    end
    def self.yelling_happily(words)
      words + "!!!" + " :)"
    end
  end
=end

  def yell_angrily(words)
    words + "!!!" + " :*("
  end

  def yelling_happily(words)
    words + "!!!" + " :)!!!"
  end
end

#Class that includes module that shout
class Children
  include Shout
end

class Parent
  include Shout
end

#driver code
#puts Shout.yell_angrily("I am mad")
#puts Shout.yelling_happily("I'm so happy")
yelling_child = Children.new
puts "Angry child, throwing a tantrum."
puts yelling_child.yell_angrily("WAAAAAAHHH I WANT MCDONALDS")
puts" "
puts "Happy child at the pool ready to jump off the diving board."
puts yelling_child.yelling_happily("YAY")


yelling_parent = Parent.new
puts "Angry parent, yelling at a child that he/she is grounded"
puts yelling_parent.yell_angrily("No tv or PS4 for a week")
puts yelling_parent.yell_angrily("Now, GO TO YOUR ROOM")
puts" "
puts "Happy parent when Child brings home all A's on his/her report card"
puts yelling_parent.yelling_happily("I'm so proud of you")