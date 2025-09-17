=begin
/catalog                        # Main book catalog search
/catalog/search                 # Search results
/catalog/book/:id               # Individual book details
/catalog/author/:id             # Books by author
/catalog/genre/:genre           # Books by genre
=end


class CatalogController < ApplicationController
   get '/' do
     erb :'catalog/catalog'
   end

   get '/:search' do
   end




end
