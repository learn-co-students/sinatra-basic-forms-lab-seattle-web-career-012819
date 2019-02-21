require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    attr = params.each_with_object({}) do |(k,v), h|
      h[k.to_sym] = v
    end
    @new_puppy = Puppy.new(attr)
    erb :display_puppy
  end
end
