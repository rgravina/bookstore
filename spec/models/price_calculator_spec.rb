require "rails_helper"

describe PriceCalculator do
  describe "price calcuation" do
    it "returns price when there are no discounts" do
      amazon = OpenStruct.new(name: "Amazon")
      book = OpenStruct.new(id: 1, language: "ruby")
      items = [OpenStruct.new(supplier: amazon, book: book, price: 1500)]

      book_repository = BookRepository.new
      supplier_repository = SupplierRepository.new
      discount_repository = DiscountRepository.new
      discount_matcher = DiscountMatcher.new

      expect(book_repository).to receive(:get).with(1).and_return(book)
      expect(supplier_repository).to receive(:for).with(book: book).and_return(items)

      price_calculator = PriceCalculator.new(
        book_repository: book_repository,
        supplier_repository: supplier_repository,
        discount_repository: discount_repository,
        discount_matcher: discount_matcher
      )

      line_items = price_calculator.calculate_for_book(book_id: 1)
      expect(line_items.first.price).to eq(1500)
    end
  end
end
