require_relative './application_controller'

class AdminController < ApplicationController
  get '/dashboard' do
    erb :'admin/dashboard'
  end
end
