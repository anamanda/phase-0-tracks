# Week 5 Practice Assessment

# define method that takes an integer, operator string, and another integer
def calculate(integer1, operator_string, integer2)
  # use the Object#send method to convert operator string into operator
  # call it on integer1 and then use the second integer to complete operation
  integer1.send(operator_string, integer2)
end

p calculate(1, '+', 4)