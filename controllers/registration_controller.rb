
class RegistrationController < ApplicationController
  get '/' do
    erb :'authentication/register'
  end

end
