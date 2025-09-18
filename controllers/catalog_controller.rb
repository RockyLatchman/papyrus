require_relative '../models/book'
require_relative '../models/copy'


class CatalogController < ApplicationController
   get '/' do
     result = Book.new
     @catalog = result.retrieve_all
     erb :'desk/catalog'
   end

   post '/search/' do
     book = Book.new
     @authors_books = book.search_catalog(params[:filter], params[:catalog_search])
     erb :'desk/partials/search'
   end

   get '/book/:book_id' do
     @book = Book.retrieve_one(params[:book_id])
     @book_count = Book.number_of_copies(params[:book_id])
     erb :'desk/partials/book'
   end

   post '/author/' do

   end

   get '/genre/:genre' do
   end

end
