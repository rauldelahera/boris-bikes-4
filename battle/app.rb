require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name]  = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @name_1 = session[:player_1_name]
    @name_2 = session[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
