require 'pry'

def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map { |food| food[:name] }
end

def spiciest_foods(spicy_foods)
  spicy_foods.select { |food| food[:heat_level] > 5 }
end

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine }
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |food| food[:heat_level] }
end

def print_spiciest_foods(spicy_foods)
  spiciest_foods(spicy_foods).each do |food|
    heat_level = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end

def average_heat_level(spicy_foods)
  total_heat_level = spicy_foods.map { |food| food[:heat_level] }.sum
  total_heat_level / spicy_foods.length.to_f
end
foods = spicy_foods

names = get_names(foods)
puts names.inspect
# Output: ["Green Curry", "Buffalo Wings", "Mapo Tofu"]

spiciest = spiciest_foods(foods)
puts spiciest.inspect
# Output: [{:name=>"Green Curry", :cuisine=>"Thai", :heat_level=>9}, {:name=>"Mapo Tofu", :cuisine=>"Sichuan", :heat_level=>6}]

print_spicy_foods(foods)
# Output:
# Green Curry (Thai) | Heat Level: 🌶🌶🌶🌶🌶🌶🌶🌶
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# Mapo Tofu (Sichuan) | Heat Level: 🌶🌶🌶🌶🌶🌶

food_by_cuisine = get_spicy_food_by_cuisine(foods, 'Thai')
puts food_by_cuisine.inspect
# Output: {:name=>"Green Curry", :cuisine=>"Thai", :heat_level=>9}

sorted_foods = sort_by_heat(foods)
puts sorted_foods.inspect
# Output: [{:name=>"Buffalo Wings", :cuisine=>"American", :heat_level=>3}, {:name=>"Mapo Tofu", :cuisine=>"Sichuan", :heat_level=>6}, {:name=>"Green Curry", :cuisine=>"Thai", :heat_level=>9}]

print_spiciest_foods(foods)
# Output:
# Green Curry (
