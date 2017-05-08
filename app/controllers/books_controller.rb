class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    # get the requested book
    @book = Book.find(params[:id])
    # find suppliers who can deliver the book and the price it costs
    supplier_books = SupplierBook.where(book: @book)
    # apply any discounts
    @supplier_books = supplier_books.map do |sb|
      OpenStruct.new(
        name: sb.supplier.name,
        price: sb.price,
        discounted_price: sb.discounted_price,
        discount_reason: sb.discount_reason
      )
    end
  end
end
