# Week 5 Practice Assessment

# define method that takes an integer, operator string, and another integer
def calculate(integer1, operator_string, integer2)
  # use the Object#send method to convert operator string into operator
  # call it on integer1 and then use the second integer to complete operation
  integer1.send(operator_string, integer2)
end

# driver code that will test all four operators
p calculate(1, '+', 4) # should equal 5
p calculate(4, '-', 1) # should equal 3
p calculate(4, '*', 5) # should equal 20
p calculate(10, '/', 5) # should equal 2