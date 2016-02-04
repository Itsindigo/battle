require 'game.rb'

describe Game do

  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1, player_2)}

  describe "#player_1" do
    it "should return player 1 name" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "should return player 1 name" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it "causes player to receive receives_damage method" do
      expect(player_1).to receive(:receives_damage)
      game.attack(player_1)
    end
  end
end