puts "What is your name?"
vampire_name = gets.chomp

puts "How old are you? What year were you born?"
puts "Age:"
vampire_age = gets.chomp
puts "Birth year:"
vampire_birth_year = gets.chomp


puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp

if vampire_age.to_i == (2016 - vampire_birth_year.to_i) && (garlic_bread =="y" || health_insurance == "y")
  puts "Probably not a vampire."
elsif vampire_age.to_i != (2016 - vampire_birth_year.to_i) && (garlic_bread == "n" || health_insurance == "n")
  puts "Probably a vampire."
elsif vampire_age.to_i != (2016 - vampire_birth_year.to_i) && garlic_bread == "n" && health_insurance == "n"
  puts "Almost certainly a vampire."
elsif vampire_name.to_i == "Drake Cula" || vampire_name == "Tu Fang"
  puts "Definitely a vampire."
else
  puts "Results inconclusive."
end