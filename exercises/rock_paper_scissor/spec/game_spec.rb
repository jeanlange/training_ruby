require_relative '../lib/game'
require_relative '../lib/user'
require_relative '../lib/throw'

# Add 'rspec' to Gemfile
# run `bundle` to install that
# rspec --init
# run `rspec`
#
RSpec.describe Game, '#result' do
  context 'With two users, one throwing rock, one throwing scissors' do
    it 'presents the first user as the winner' do

      rock_thrower = User.new(name: 'Rocky')
      scissors_thrower = User.new(name: 'Sci')
      rock = Throw.new(:rock, rock_thrower)
      scissors = Throw.new(:scissors, scissors_thrower)

      game = Game.new
      rock_thrower.throw_hand(rock, game)
      scissors_thrower.throw_hand(scissors, game)

      expect(game.result).to eq 'Rocky wins'
    end
  end

  context 'With two users, one throwing paper, one throwing scissors' do
    it 'presents the second user as the winner' do

      paper_thrower = User.new(name: 'papery')
      scissors_thrower = User.new(name: 'Sci')
      paper = Throw.new(:paper, paper_thrower)
      scissors = Throw.new(:scissors, scissors_thrower)

      game = Game.new
      paper_thrower.throw_hand(paper, game)
      scissors_thrower.throw_hand(scissors, game)

      expect(game.result).to eq 'Sci wins'

    end
  end
end
