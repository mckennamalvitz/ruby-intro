# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 3-arrays.rb

# Arrays are lists of things
favorite_foods = ["tacos", "pizza", "ice cream"]
puts favorite_foods

we_have_to_go_back = [4, 8, 15, 16, 23, 42]
puts we_have_to_go_back

mixed_array = ["tacos", 12, true]
puts mixed_array

shopping_lists = [["milk", "eggs", "toilet paper"], ["soap", "shampoo", "shaving cream", "toilet paper"]]

# Accessing the array
second_shopping_list = shopping_lists[1]
third_item = second_shopping_list[2]
puts third_item

# Add to the array
favorite_foods.push("more tacos")
puts favorite_foods

favorite_foods = favorite_foods + ["french fries", "ramen"]
puts favorite_foods

puts favorite_foods.length
puts favorite_foods.count
puts favorite_foods.size
# There are lots of fun things you can do with arrays:
# https://ruby-doc.org/core-2.7.0/Array.html
