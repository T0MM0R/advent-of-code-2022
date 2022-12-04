require('./rpc_game.rb')

class RpcGameFactory
  attr_accessor :rpc_games
  attr_accessor :total_score
  attr_accessor :data

  def parse_input
    @data.split("\n")
  end

  def rpc_game_factory
    rounds = []
    parse_input.each do |round|
      rounds.append(RpcGame.new(round))
    end
    rounds
  end

  def add_scores
    @rpc_games.sum(&:score)
  end

  def initialize(data)
    @data = data
    @rpc_games = rpc_game_factory
    @total_score = add_scores
  end
end
