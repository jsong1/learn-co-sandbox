# We're going to write a method that takes a list of employees
# and assigns each one an employee number. It should puts all the 
# employees' names and numbers
# The employee nuber is in the formay "ACME-3"
# such as "Frank is the employee number ACME-26"

def assign_numbers(employees_array)

# I have an array of employye assign_numbers
# I need to assign a unique number to each one

counter = 1;

employees_array.each_with_index do |employee|
    puts "#{employee} is employee number ACME-#{counter}"
    counter +=1
  end
end

#My test code:

employee_names = ["Howard","Frank","Sally","Susan","Jimmy", "Guy", "Jess", "Jessi","Faith"]

assign_numbers(employee_names)