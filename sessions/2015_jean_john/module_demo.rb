module Waver
  def wave
    puts "the person waves"
  end
end

class Person
  include Waver
  
  def say_hi
    puts "hi"
  end
end

jean = Person.new
jean.say_hi
jean.wave

# asked: how to include modules/behavior
# potential exercise: make a class enumerable by doing comparator operator