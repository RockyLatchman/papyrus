require 'sinatra/base'

class ApplicationController < Sinatra::Base
  configure do
    set :views, File.expand_path('../../views', __FILE__)
  end

  not_found do
    erb :not_found
  end

  get '/' do
    erb :index
  end

end
