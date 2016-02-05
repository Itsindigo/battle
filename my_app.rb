require 'sinatra/base'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @switch_turn = @game.switch_turn
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @player_1_hp = @game.player_1.hp
    @player_2_hp = @game.player_2.hp
    erb :play
  end

  get '/attack' do
    @game = $game
    @switch_turn = @game.switch_turn
    @p1_att_p2 =  @game.attack(@game.player_1)
    @p2_att_p1 =  @game.attack(@game.player_2)
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    erb :attack
  end

  # get '/wait-your-turn' do
  #   erb :wait-your-turn
  # end


  run! if app_file == $0
end
