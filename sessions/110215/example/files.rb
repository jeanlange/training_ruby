f = File.open('turtles.csv')

file_text = f.read

f.each_line do |turtle_data|
  array_of_data = turtle_data.split(',')
  first_column = array_of_data[0]
  puts first_column
end

my_new_file = File.open('output_file', 'w')
my_new_file.puts "Hello world"
my_new_file.close
