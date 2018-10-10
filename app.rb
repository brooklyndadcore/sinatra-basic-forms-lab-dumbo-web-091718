require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @puppy = Puppy.new
    @puppy.age=(params[:age])
    @puppy.name=(params[:name])
    @puppy.breed=(params[:breed])
    erb :display_puppy
  end



end
