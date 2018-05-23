# Understands how many times the coin has landed on heads

require_relative 'coin'

class Score

  attr_reader :scores
  @@top_score = []

  def initialize(coin = Coin.new)
    @scores = []
    @coin = coin
  end

  def flip
    land_value = @coin.values.sample
    if land_value == 'heads'
      @scores << land_value
      return land_value
    else
      return land_value
    end
  end

  def head_count
    heads = @scores.length
  end

  def game_score
    @@top_score << head_count
    puts @@top_score.sort[-1]
  end

end

# Feature tests:
p score = Score.new
p score.flip
p score.flip
p score.flip
p score.flip
p score.head_count
p score
p score.game_score
p score2 = Score.new
p score2.flip
p score2.flip
p score2.flip
p score2.head_count
p score2
p score2.game_score
