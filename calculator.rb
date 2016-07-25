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
  puts "Please enter a calculation you would like to perform, and type 'done' when finished (integer + operation + integer):"
  user_input = gets.chomp

  # creat empty array where the calculation history will be stored
  # create variable that starts at 0 and will be added 1 to each time the calculation is performed
  calculation_storage = []
  number_of_times = 0

  # create loop to keep prompting user until they type done
  until user_input == "done"

    # use begin keyword to start looking out for errors
    begin

    # scan the user input for the first integer
    user_integer1 = user_input.scan(/\d+/).first.to_i

    # remove user_integer1 from user_input
    user_input.delete!(user_integer1.to_s)

    # scan the user input for the second integer
    user_integer2 = user_input.scan(/\d+/).last.to_i

    # remove user_integer2 from user_input
    user_input.delete!(user_integer2.to_s)

    # remove whitespace around remaining string, which is ' operator '
    user_input.delete!(' ')

    # set user_operation to remaining string
    user_operation = user_input

    # store result of calculate method on user input in 'result' variable
    result = calculate(user_integer1, user_operation, user_integer2)

    # print result of calculate method with user input
    p result

    # add the sentence "integer1 + operation + integer2 = result" to calculation_storage array, to be called later
    calculation_storage.push("#{user_integer1} #{user_operation} #{user_integer2} = #{result}")

    # add 1 to the number of times the loop has been completed
    number_of_times += 1

    # if there is an error, use rescue keyword & print sentence encouraging them to try again
    rescue
      puts "Error: Could not complete operation. Please try again."
    end

    # prompt user to enter calculation again
    puts "Please enter a calculation you would like to perform, and type 'done' when finished (integer + operation + integer):"
    user_input = gets.chomp

  end

  puts "#{number_of_times} calculations performed:"
  calculation_storage.map do |calculation|
    puts calculation
  end
