require('./rpc_game_factory.rb')

data = File.open('input.txt').read

games = RpcGameFactory.new(data)

p "total score"
p games.total_score
