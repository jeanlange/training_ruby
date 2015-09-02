class Throw
  attr_accessor :text, :user

  def initialize(throw_symbol, user)
    @text = throw_symbol.to_s
    @user = user
  end
end
