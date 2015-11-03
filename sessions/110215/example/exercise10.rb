origin_file = File.open('turtles.csv')
output_file = File.open('turtles2.csv','a') # or 'w' mode to overwrite

origin_file.each_line do |line|
  output_file.puts line
end

output_file.close
origin_file.close
