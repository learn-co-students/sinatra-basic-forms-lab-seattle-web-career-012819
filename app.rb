require_relative 'config/environment'

class App < Sinatra::Base

  get('/') {
    erb :index
  }

  get('/new') {
    erb :create_puppy
  }

  post('/puppy') {
    @name = params[:name]
    @breed = params[:breed]
    @age = [params[:age], "months"].join(" ")
    erb :display_puppy
  }
end
