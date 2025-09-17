

class Book < ActiveRecord::Base
  def retrieve_all
    @books = Book.all
  end

  def self.retrieve_one(id)
    @book = Book.find(id)
  end


end
