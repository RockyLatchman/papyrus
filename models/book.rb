
class Book < ActiveRecord::Base
  def retrieve_all
    @books = Book.all
  end

  def self.retrieve_one(id)
    @book = Book.find(id)
  end

  def search_catalog(criteria, name)
    @author = Book.where("#{criteria}": name)
  end


end
