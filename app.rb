require 'sinatra'

class FishApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/salmon' do
    erb :salmon, :locals => {:fish_name => "Atlantic Salmon"}
  end

  get '/trout' do
    erb :trout
  end

  get '/halibut' do
    erb :halibut
  end

end
