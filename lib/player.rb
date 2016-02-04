class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  # def player_name
  #   @name
  # end

  def receives_damage
    @hp -= 20
  end
end
