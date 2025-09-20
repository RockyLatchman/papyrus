require_relative './application_controller'

class AdminController < ApplicationController
  get '/dashboard' do
    erb :'admin/dashboard'
  end

  get '/desk' do
    erb :'admin/desk'
  end

  get '/desk/edit/' do
    erb :'admin/partials/staff/edit'
  end

  get '/staff/new' do
    erb :'admin/partials/staff/new', layout: false
  end

end
