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
    session[params[:item][:name].to_sym] = params[:item][:price]
    params[:item][:name]
  end
end