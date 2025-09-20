require_relative './application_controller'

class AdminController < ApplicationController
  get '/dashboard' do
    erb :'admin/dashboard'
  end

  get '/desk' do
    erb :'admin/desk'
  end

  get '/desk/edit/' do
    erb :'admin/partials/staff/edit', layout: false
  end

  get '/desk/view/' do
    erb :'admin/partials/staff/view', layout: false
  end

  get '/desk/delete/' do
     erb :'admin/partials/staff/delete', layout: false
  end

  get '/staff/new' do
    erb :'admin/partials/staff/new', layout: false
  end

  get '/settings' do
    erb :'admin/settings'
  end

end
