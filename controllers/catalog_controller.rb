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

   get '/author/:name' do
   end

   get '/genre/:genre' do
   end

end


=begin
/catalog                        # Main book catalog search
/catalog/search                 # Search results
/catalog/book/:id               # Individual book details
/catalog/author/:id             # Books by author
/catalog/genre/:genre           # Books by genre
=end
