class Mammal
  def self.description
    "an animal with hair"
  end

  def hair
    "has it"
  end

  def bio
    "This is #{Mammal.description}"
  end
end

class Dog < Mammal
  BARK_NOISE = "ruff"

  def legs
    4
  end

  def bark
    BARK_NOISE
  end
end

class GermanShephard < Dog
  def bark
    Dog::BARK_NOISE + " shnitzel"
  end
end

fido = GermanShephard.new
puts fido.bark
puts fido.legs
puts fido.bio
