require 'sinatra/base'
require 'dotenv'
Dotenv.load
ENV['RACK_ENV'] ||= 'development'
Dir.glob('./{helpers,controllers}/*.rb').each { |file| require file}

map('/admin') { run AdminController }
map('/signin') { run SigninController }
map('/register') { run RegistrationController }
map('/catalog') { run CatalogController }
map('/') { run ApplicationController }
