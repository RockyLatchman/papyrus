
class Book < ActiveRecord::Base
  has_many :copies
  has_many :reservations

  def retrieve_all
    @books = Book.all
  end

  def self.retrieve_one(id)
    @book = Book.find(id)
  end

  def search_catalog(criteria, name)
    @author = Book.where("#{criteria}": name)
  end

  def self.number_of_copies(book_id)
    book_count = 0
    book_details = Book.includes(:copies).where(copies: { book_id: book_id})
    book_details.each do |book|
      book.copies.each { |copy| book_count += 1 }
    end
    book_count
  end

end
