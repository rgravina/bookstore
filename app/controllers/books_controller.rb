class BooksController < ApplicationController
  def index
    @books = BookRepository.new.all
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

  def show_better
    book_repository = BookRepository.new
    supplier_repository = SupplierRepository.new
    discount_repository = DiscountRepository.new
    discount_matcher = DiscountMatcher.new

    price_calculator = PriceCalculator.new(
      book_repository: book_repository,
      supplier_repository: supplier_repository,
      discount_repository: discount_repository,
      discount_matcher: discount_matcher
    )

    @book = book_repository.get(params[:id])
    @supplier_books = price_calculator.calculate_for_book(book_id: params[:id])
    render :show
  end
end
