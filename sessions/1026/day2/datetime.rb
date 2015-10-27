require 'date'

now = Time.now.to_date
yesterday = Date.parse('2015-10-26')

if now > yesterday
  puts 'Time still is a straight line'
  puts now.strftime('Today is: %A, %B %e %Y')
end
