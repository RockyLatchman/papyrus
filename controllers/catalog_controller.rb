require_relative '../models/book'


class CatalogController < ApplicationController
   get '/' do
     result = Book.new
     @catalog = result.retrieve_all
     erb :'catalog/books'
   end

   get '/:search' do
   end

   get '/book/:book_id' do
     @book =  Book.retrieve_one(params[:book_id])
     erb :'catalog/book'
   end

   get '/author/:id' do
   end

   get '/genre/:genre' do
   end

end
