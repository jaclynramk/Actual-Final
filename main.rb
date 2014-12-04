require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    @title = "Jaclyn Ramkissoon's Portfolio"
    @description = "This site showcases all of the awesome things that Jaclyn Ramkissoon has done."
    @home = "active"
    erb :onepage
end

get '/print' do
    @title = "Jaclyn Ramkissoon's Portfolio"
    @description = "This page showcases all of published things that Jaclyn Ramkissoon has done."
    @home = "active"
    erb :print
end