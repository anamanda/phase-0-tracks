puts "What's your name?"
name = gets.chomp

puts "What's your preferred volume level? (1-10)"
volume_level = gets.chomp
until volume_level.to_i > 0 && volume_level.to_i < 10
  puts "What's your preferred volume level? (1-10)"
  volume_level = gets.chomp
end

puts "What's your favorite fur color?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
adoption_candidate = gets.chomp

puts "Around what age?"
age = gets.chomp
if age == ""
  age = nil
end
