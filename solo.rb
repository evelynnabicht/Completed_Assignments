
#  for entering tasks for future list manipulation

# Has attributes (all read-writable) including:
#   - state of mind
#   - time est 
#   - priority
# Has methods including:
#   Method repeats: accepts frequency of repetition, or acknowledges single action
#   Method completes: gives success message
#   Method descriptive: accepts verb and prompts to change 
#         if not     

class ToDo
# attr_reader not used because all attributes are also writable
attr_accessor :mindstate, :time_est, :priority, :name

def initialize(name)
puts "Creating task called #{name}..."
@name = name
@time_est = 20
end

def repeat(frequency)
if frequency == "none"
puts "Got it, it's a single action."
else
puts "This repeats: #{frequency}"
end
end

def complete
puts "Yay! Another check off - you're doing great!"
end

def descriptive
puts "Quick double check: is this task name descriptive?"
response = gets.chomp.downcase
if response == "yes"
puts "Excellent!"
elsif response == "no"
puts "Why don't you rename it now:"
@name = gets.chomp
puts "Super, it's been updated."
end
end

  # def time_est(minutes)
  #   @time_est = minutes.to_i
  # end

end

# Driver Code
# task = ToDo.new("assignment 6-3")
# 
# task.repeat("weekly")
# task.repeat("none")
# task.complete
# task.descriptive

# Program
# Prompt user to initialize X number of tasks
#   - tell them to type "done" when complete
# Prompt user to define attributes
# Store instances in an array
# When user enters "done", print their tasks with details  

puts "Yay! You're planning out your week. Enter your tasks here."
puts "When you've entered them all, just type \'done\'.\n"
task_list = []
while true
puts "\nTask name:"
name = gets.chomp
if name == "done"
break
else
end
task = ToDo.new(name)
task.descriptive

puts "\nWhat state of mind should this task be done in?"
task.mindstate= (gets.chomp)
puts "\nHow many minutes should this take?"
task.time_est= (gets.chomp.to_i)
puts "\nWhat's the priority?"
task.priority= (gets.chomp)

task_list << task
end
p task_list

puts "\nHere's your list:"

task_list.each do |task|
puts "#{task.name} ::: Priority: #{task.priority} ::: State of Mind: #{task.mindstate} ::: Time est: #{task.time_est}"
end
