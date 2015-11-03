module FizzBuzz
  def divisible_by?(number, divisor)
    number % divisor == 0
  end

  def fizzbuzz(number)
    if divisible_by?(number,3) and divisible_by?(number,5)
      'FizzBuzz'
    elsif divisible_by?(number,3)
      'Fizz'
    elsif divisible_by?(number,5)
      'Buzz'
    else
      number
    end
  end
end
