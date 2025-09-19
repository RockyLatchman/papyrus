class SigninController < ApplicationController
  get '/' do
    erb :'authentication/signin'
  end

  get '/otp' do
    erb :'authentication/otp'
  end
end
