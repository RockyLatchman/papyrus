require_relative '../models/book'


class CatalogController < ApplicationController
   get '/' do
     result = Book.new
     @catalog = result.retrieve_all
     erb :'catalog/books'
   end

   post '/search/' do
     book = Book.new
     @authors_books = book.search_catalog(params[:filter], params[:catalog_search])
     erb :'catalog/partials/search'
   end

   get '/book/:book_id' do
     @book =  Book.retrieve_one(params[:book_id])
     erb :'catalog/partials/book'
   end

   post '/author/' do

   end

   get '/genre/:genre' do
   end

end
