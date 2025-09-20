require 'sinatra/base'
require 'sinatra/activerecord'


class ApplicationController < Sinatra::Base

  configure do
    set :views, File.expand_path('../../views', __FILE__)
    set :public_folder, File.expand_path('../../public', __FILE__)
    set :database, 'config/database.yml'
  end

  not_found do
    erb :not_found
  end

  get '/' do
    erb :index
  end

end
