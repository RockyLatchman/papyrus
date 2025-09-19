class SigninController < ApplicationController
  get '/' do
    erb :'authentication/signin'
  end
end
