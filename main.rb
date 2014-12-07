require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    @title = "Jaclyn Ramkissoon's Portfolio"
    @description = "This site showcases all of the awesome things that Jaclyn Ramkissoon has done."
    @home = "active"
    erb :home
end

