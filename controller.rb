require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/play' do
  erb(:play)
end

get '/play/:choice1/:choice2' do
  ch1 = params[:choice1]
  ch2 = params[:choice2]
  game = Game.new(ch1, ch2)
  @result = game.play
  erb(:play)
end
