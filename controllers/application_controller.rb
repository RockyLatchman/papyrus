require 'sinatra/base'

class ApplicationController < Sinatra::Base
  configure do
    set :views, File.expand_path('../../views', __FILE__)
  end

  get '/' do
    erb :index
  end

end
