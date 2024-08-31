require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

counter = 0
# ここにコードを書こう
get '/' do
    @counter = counter
    erb :index
end

post '/count' do
    counter = counter + 1
    redirect '/'
end