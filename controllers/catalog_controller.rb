
class CatalogController < ApplicationController
   get '/' do
     erb :'catalog/catalog'
   end

   get '/:search' do
   end

   get '/book/:id' do
   end

   get '/author/:id' do
   end

   get '/genre/:genre' do
   end

end
