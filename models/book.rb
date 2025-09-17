

class Book < ActiveRecord::Base
  def retrieve_all
    @books = Book.all
  end

  def self.retrieve_one(id)
    @book = Book.find(id)
  end

  def find_by_author(name)
    @author = Book.find_by(author: name)
  end

end
