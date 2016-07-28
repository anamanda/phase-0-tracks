# GPS 2.2

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # create an array with user input, to be iterated through
  # 1 = default quantity
  # print the list by calling .each on the hash
# output: return the grocery list

def create_shopping_list(groceries_input)
  grocery_list_hash = {}
  grocery_list = groceries_input.split(" ")
  grocery_list.each do |grocery_item|
    grocery_list_hash[grocery_item] = 1
  end
  
  grocery_list_hash

end

# shopping_1 = create_shopping_list("carrots apples cereal pizza")





# Method to add an item to a list
# input: item name and optional quantity
# steps: add item to hash, along with optional quantity (set default to 1)
# output: return the updated hash

def adding_item(quantity = 1, item, shopping_hash)
  shopping_hash[item] = quantity
  shopping_hash
end

# p adding_item(5, "potatoes", shopping_1)





# Method to remove an item from the list
# input: item that will be removed, hash it will be removed from
# steps: use delete method on the hash to delete the item
# output: return the updated hash

def removing_item(item, shopping_hash)
  shopping_hash.delete(item)
  shopping_hash
end

# p removing_item("potatoes", shopping_1)





# Method to update the quantity of an item
# input: item, the new updated quantity, the hash it will be updated in
# steps: update the quantity of a specific item in the hash
# output: return the updated hash

def updating_quantity(updated_quantity, item, shopping_hash)
  shopping_hash[item] = updated_quantity
  shopping_hash
end

# p updating_quantity(10, "potatoes", shopping_1)



# Method to print a list and make it look pretty
# input: the hash
# steps: iterate through the hash and print each item and its quantity in sentence form
# output: a list of each item and its quantity


def printing_list(shopping_hash)
  shopping_hash.each do |grocery_item, quantity|
    puts "You have #{quantity} #{grocery_item} in your bag!"
  end
end

# printing_list(shopping_1)



