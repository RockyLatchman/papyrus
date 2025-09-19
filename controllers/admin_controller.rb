require_relative './application_controller'

class AdminController < ApplicationController
  get '/dashboard' do
    erb :'admin/dashboard'
  end

  get '/desk' do
    erb :'admin/desk'
  end
end
