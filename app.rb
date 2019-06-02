require 'rubygems'
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader'
require 'sinatra/activerecord'

configure :development do
    set :database, 'sqlite3:db/database.db'
end


class Client < ActiveRecord::Base
end

get '/' do
    
    @a=Client.order(money: :desc)
    erb :index
    
end

get '/about' do
    
    erb :about
    
end

