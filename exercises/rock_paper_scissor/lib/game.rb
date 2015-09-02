class Game
  attr_accessor :throws
  def initialize
    @throws = []
  end

  def add_user(user)
  end

  def result
    first_throw_text = throws[0].text
    second_throw_text = throws[1].text

    first_user = throws[0].user
    second_user = throws[1].user

    case [first_throw_text, second_throw_text]
    when ['rock','scissors']
      first_user.name+' wins'
    when ['paper','scissors']
      second_user.name+' wins'
    end
  end
end
