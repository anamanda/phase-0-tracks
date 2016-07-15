puts "How many employees will be processed?"
number_of_employees = gets.chomp
# Asked user question and got input

process_count = 0
# Created a count for the number of employees being processed

until process_count == number_of_employees.to_i
# Created a loop for the number of employees being processed, converted number_of_employees to integer
  puts "What is your name?"
  vampire_name = gets.chomp
  # Asked user for name and got input

  puts "How old are you? What year were you born?"
  puts "Age:"
  vampire_age = gets.chomp
  puts "Birth year:"
  vampire_birth_year = gets.chomp
  # Asked user for age & birth year, got separate input

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_bread = gets.chomp
  # Asked user whether they want garlic bread or not

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  health_insurance = gets.chomp
  # Asked user whether they want to enroll on the company's health insurance or not

  puts "Please list your allergies and type 'done' when finished."
  allergies = gets.chomp
  # Asked user to enter allergies and type 'done' when finished

  until allergies == "done"
  # Created loop that keeps going until user enters "done"
    if allergies == "sunshine"
      puts "Probably a vampire."
      break
    # If the user enters "sunshine" at any point, break out of the loop and conclude they are likely vampire
    elsif allergies != "done" && allergies != "sunshine"
      allergies = gets.chomp
    # Otherwise, keep prompting user to enter allergies until they are done
    end
  end
  # Ended loop and if statement

  if allergies == "done"
  # Once they are done entering allergies...

    if vampire_age.to_i == (2016 - vampire_birth_year.to_i) && (garlic_bread =="y" || health_insurance == "y") && vampire_name != "Drake Cula" && vampire_name != "Tu Fang"
      puts "Probably not a vampire."
    # If user's age & birth year match, and they want garlic bread or health insurance,
    # and their name isn't "Drake Cula" or "Tu Fang",
    # print they're probably not a vampire

    elsif vampire_age.to_i != (2016 - vampire_birth_year.to_i) && ((garlic_bread == "n" && health_insurance == "y") || (health_insurance == "n" && garlic_bread == "y")) && vampire_name != "Drake Cula" && vampire_name != "Tu Fang"
      puts "Probably a vampire."
    # Otherwise, if user's age & birth year don't match, and they don't want garlic bread but want health insurance
    # or they don't want health insurance but want garlic bread, and their name isn't "Drake Cula" or "Tu Fang",
    # print they're probably a vampire

    elsif vampire_age.to_i != (2016 - vampire_birth_year.to_i) && garlic_bread == "n" && health_insurance == "n" && vampire_name != "Drake Cula" && vampire_name != "Tu Fang"
      puts "Almost certainly a vampire."
    # Otherwise, if user's age & birth year don't match, and they don't want garlic bread
    # and they don't want health insurance, and their name isn't "Drake Cula" or "Tu Fang",
    # print they're almost certainly a vampire

    elsif vampire_name == "Drake Cula" || vampire_name == "Tu Fang"
      puts "Definitely a vampire."
    # Otherwise, if user's name is either 'Drake Cula' or 'Tu Fang', print definitely a vampire

    else
      puts "Results inconclusive."
    # Otherwise, print results inconclusive

    end
  end
  # Ended both if loops

  process_count += 1
  # Added one to the counter each time an employee completed the application

end
# Ended the loop once it gets to the amount of employees that applied

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
# Printed a statement saying never mind, let's all be friends




