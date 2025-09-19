class SigninController < ApplicationController
  get '/' do
    erb :'authentication/signin'
  end

  get '/otp' do
    erb :'authentication/otp'
  end

  get '/forgot-password' do
    erb :'authentication/forgot_password'
  end

  get '/reset-password' do
    erb :'authentication/reset_password'
  end
end
