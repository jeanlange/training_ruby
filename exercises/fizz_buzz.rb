=begin
Unless the number is divisible by 5 and 3. Then put "FizzBuzz"
Hint: look at the Integer documentation page for easier ways to get 1 through 100
=end

101.times do |n|
  if n % 5 == 0 and n % 3 == 0
    puts 'FizzBuzz'
  elsif n % 5 == 0
    puts 'Buzz'
  elsif n % 3 == 0
    puts 'Fizz'
  else
    puts n
  end
end

