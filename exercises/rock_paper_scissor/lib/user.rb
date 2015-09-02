class User
  attr_accessor :name

  def initialize(options)
    @name = options[:name]
  end

  def throw_hand(hand, game)
    game.throws << hand
  end
end
