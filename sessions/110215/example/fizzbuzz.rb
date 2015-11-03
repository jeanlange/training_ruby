require_relative './fizzbuzzlib'
include FizzBuzz

file = File.new('output','w')

100.times do |number|
  number += 1
  file.puts fizzbuzz(number)
end

file.close
