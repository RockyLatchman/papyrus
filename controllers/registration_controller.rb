
class RegistrationController < ApplicationController
  get '/' do
    erb :'authentication/register'
  end

  get '/library' do
    erb :'admin/library'
  end

end
