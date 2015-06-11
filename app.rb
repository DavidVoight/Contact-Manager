require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require_relative 'models/contact'
also_reload 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end
