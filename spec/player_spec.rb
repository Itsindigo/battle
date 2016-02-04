require 'player.rb'

describe Player do

  subject(:player_1) {described_class.new("tom")}
  subject(:player_2) {described_class.new("barry")}

  describe '#player' do
    it "Should return the player name" do
      expect(player_1.name).to eq "tom"
    end
  end

  describe '#receive_damage' do
    it "should reduce player hp by 20" do
      expect{player_2.receives_damage}.to change{player_2.hp}.by -20
    end
  end
end
