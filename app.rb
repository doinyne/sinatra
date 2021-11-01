require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
  "Hello!"
end

get '/secret' do
  "secret message"
end

get '/google' do
  "this isnt google"
end

get '/yahoo' do 
  "this isnt yahoo either"
end

get '/cat' do
  @name = ["Alice", "Mary", "Tom"].sample
  erb :index
end

