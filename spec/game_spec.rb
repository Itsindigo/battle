require 'game.rb'

describe Game do

  # let(:first_turn) {double :}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new(player_1, player_2)}

  describe "#player_1" do
    it "should return player 1 name" do
      expect(game.players[0]).to eq player_1
    end
  end

  describe "#player_2" do
    it "should return player 1 name" do
      expect(game.players[1]).to eq player_2
    end
  end

  describe "#turn" do
    it "should test if game begins at player ones turn" do
      expect(game.turn).to eq player_1
    end
  end


  describe "#attack" do
    it "should raise error if not players turn" do
      allow(player_2).to receive(:receives_damage)
      expect{game.attack(player_2)}.to raise_error "It is not your turn"
    end

    it "causes player to receive receives_damage method" do
      expect(player_1).to receive(:receives_damage)
      game.attack(player_1)
    end
  end

  describe "#switch_turn" do
    it "Should switch turn following an attack" do
      allow(player_1).to receive(:receives_damage)
      game.attack(player_1)
      expect{game.switch_turn}.to change{game.turn}
      expect(game.turn).to eq player_1
    end
  end

  # describe "#first turn" do
  #   it "" do
  #
  #   end
  # end
end
