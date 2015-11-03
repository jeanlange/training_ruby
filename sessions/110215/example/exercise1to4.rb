puts "Hello, World"

name = "Justin"
puts "Hello, #{name}"

lower_name = 'justin'
puts "Hello, #{lower_name.capitalize}"

lower_name = 'justin'
puts "#{lower_name.capitalize} is about #{28 * 365} days old"

# Set up a dinner item
dinner = {
  'Price' => 10.99,
  'Name' => 'Grand Slam',
  'Description' => 'Eggs and bacon'
}
# Find dinner item price
dinner['Price']

# Replace dinner item
dinner = {
  :price => 12.99,
  :name => 'Grand Slam', # Should we name it 'Grand Slam'? Copywritten????
  :description => 'Eggs and bacon'
}

dinner = {
  price: 10.99,
  name: 'Grand Slam',
  description: 'Eggs and bacon'
}
dinner[:price]
breakfast = {
  price: 35.99,
  name: 'Grand Slam',
  description: 'Eggs and bacon and orange juice'
}

menu = [dinner, breakfast]

menu[0][:price]

first_menu_item = menu[0]
first_menu_item_price = first_menu_item[:price]
