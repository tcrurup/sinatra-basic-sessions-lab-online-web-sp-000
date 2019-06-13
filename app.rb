require_relative 'config/environment'

class App < Sinatra::Base
  
configure do
  enable :sessions
  set :session_secret, "secret"
end
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do
    binding.pry
    session[:item] = params[:item][:name]
    @session = session
    binding.pry
    params[:item][:name]
    
  end
end