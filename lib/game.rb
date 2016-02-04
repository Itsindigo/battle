class Game

  attr_reader :players, :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receives_damage
  end

  def who_starts_first
    @players.sample
  end
end
