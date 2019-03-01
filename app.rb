require_relative 'config/environment'

class App < Sinatra::Base

  #home
  get '/' do
    erb :index
  end

  #create a new puppy
  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    Puppy.new(params)
    @age = params[:age]
    @breed = params[:breed]
    @name = params[:name]
    erb :display_puppy
  end
end
