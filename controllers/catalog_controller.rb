require_relative '../models/book'
require_relative '../models/copy'


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
     @book = Book.retrieve_one(params[:book_id])
     @book_count = Book.number_of_copies(params[:book_id])
     copy = Copy.retrieve_all_copies(params[:book_id], 1)
     puts copy
     erb :'catalog/partials/book'
   end

   post '/author/' do

   end

   get '/genre/:genre' do
   end

end


# ... (existing setup code)

class App < Sinatra::Base
  set :database, { adapter: 'sqlite3', database: 'db/development.sqlite3' }
  Dir["./models/*.rb"].each { |file| require file }

  get '/user_posts' do
    # Perform a query that joins the User and Post tables
    @users_with_posts = User.joins(:posts).where('posts.title LIKE ?', '%Hello%')

    # Example output: format for viewing
    content_type :json
    @users_with_posts.to_json(include: :posts)
  end
end
