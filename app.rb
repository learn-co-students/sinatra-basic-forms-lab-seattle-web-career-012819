require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    erb :results
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    text_from_user = params[:user_text]
    @puppy_info = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end
