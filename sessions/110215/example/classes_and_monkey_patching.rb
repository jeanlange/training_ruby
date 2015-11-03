class Mammal
  def self.description
    "an animal with hair"
  end

  def hair
    "has it"
  end
end

class Dog < Mammal
  def legs
    4
  end

  def bark
    "woof"
  end
end

fido = Dog.new
puts fido.bark
puts fido.legs

# Monkey patch to add barking to mammals
class Mammal
  def bark
  end
end

puts Mammal.description
plafo = Mammal.new
puts plafo.bark
puts plafo.hair
