class Game

  attr_reader :players, :turn, :counter

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
    @counter = 1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    if @counter.even?
      raise "It is not your turn" if player != @players[1]
      @counter -= 1
      player.receives_damage
    else
      raise "It is not your turn" if player != @players[0]
      @counter += 1
      switch_turn
      player.receives_damage
    end
  end

  def switch_turn
    @turn = @players.select {|x| x != @turn}.pop
  end
  # def who_starts_first
  #   @players.sample
  # end
end
