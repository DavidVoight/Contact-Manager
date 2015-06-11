require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pry'

require_relative 'models/contact'
also_reload 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end

get '/:id' do
  first_name = params[:id].split(" ").first
  @contacts = Contact.find_by first_name: first_name
  erb :show, locals: { id: params[:id] }
end
