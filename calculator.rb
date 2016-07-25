# Week 5 Practice Assessment

# define method that takes an integer, operator string, and another integer
def calculate(integer1, operator_string, integer2)
  # use the Object#send method to convert operator string into operator
  # call it on integer1 and then use the second integer to complete operation
  integer1.send(operator_string, integer2)
end

# driver code that will test all four operators
# p calculate(1, '+', 4) # should equal 5
# p calculate(4, '-', 1) # should equal 3
# p calculate(4, '*', 5) # should equal 20
# p calculate(10, '/', 5) # should equal 2

# prompt user to enter a calculation
puts "Please enter a calculation you would like to perform (integer + integer):"
user_input = gets.chomp

# their input at position 0 (convert to integer) should be the first integer
# their input at position 2 should be the operation string
# their input at position 4 (convert to integer) should be the second integer
user_integer1 = user_input[0].to_i
user_operation = user_input[2]
user_integer2 = user_input[4].to_i

# print result of calculate method with user input
p calculate(user_integer1, user_operation, user_integer2)

