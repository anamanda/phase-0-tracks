# ask for user's name
puts "What is your first and last name?"

# get user's name
name = gets.chomp

# create new variable that separates first and last name / puts them into arrays
split_name = name.split(" ")

# call the reverse method on that variable
reversed_split_name = split_name.reverse

# turn the array back into a string
reversed_name = reversed_split_name.join(" ")

# create method to loop through each vowel
def next_vowel
  vowels = ["a", "e", "i", "o", "u"]
  vowel_count = 0
  new_vowels = []
  while vowel_count < vowels.length
    if vowels[vowel_count] == "u"
      new_vowels[vowel_count] = "a"
    else
      new_vowels << vowels[vowel_count + 1]
    end
    vowel_count += 1
  end
  new_vowels
end

# create method to loop through each consenant
def next_consenant
  consenants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  consenant_count = 0
  new_consenants = []
  while consenant_count < consenants.length
    if consenants[consenant_count] == "z"
      new_consenants[consenant_count] = "b"
    else
      new_consenants << consenants[consenant_count + 1]
    end
    consenant_count += 1
  end
  new_consenants
end