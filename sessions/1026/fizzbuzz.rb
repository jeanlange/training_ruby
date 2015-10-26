# Iterate todo list  - skip ones that say 'Ignore' anywhere in the text
#
name = 'Justin'
if name.include?('Justin')
  puts 'that\'s like my name!'
end

1.upto(100).each do |number|
  if number % 15 == 0
    puts 'FizzBuzz'
  elsif number % 5 == 0
    puts 'Buzz'
  else
    puts number
  end
end

