class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @supplier_books = SupplierBook.where(book: @book)
  end
end
