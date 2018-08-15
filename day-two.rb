require 'pry'

#day will be a string of the day of the week
#when I invoke #print_routine, I want to see a printed
#routine for the day, regarding wake up time, whether to#go to work, and bedtime

def print_routine(day)
  wake_up_time(day)
  go_to_work(day)
  bedtime(day)
end

def is_weekend?(day)
  day.start_with? "s"
end

def wake_up_time(day)
  if is_weekend?(day)
    puts "Wake up at 11AM"
  else
    puts "Wake up at 6AM"
  end
end
  
#we want to see:
#print_routine "Monday"
#it should puts
# "Wake up at ...?"
# "Go to work!" or "No work today! Yay!"
# "Bed early" OR "Stay up late"
  
def go_to_work(day)
  if is_weekend?(day)
    puts "Go to work!"
  else
    puts "No work today! Yay!"
  end
end
  
def bedtime(day)
  if is_weekend?(day)
    puts "Go to bed early"
  else
    puts "Stay up late and party"
  end  
end

#How can we write one line of code to print a routine for every day of the week?

#iteration - move through a collection (think array), and do something with every element

# #each

days_array = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

days_array.each do |day|
  puts "Today is #{day}"
  print_routine(day)
  puts ""
  end
end


binding.pry
puts "goodbye"



