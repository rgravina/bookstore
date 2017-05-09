class PriceCalculator
  attr_accessor :book_repository, :supplier_repository, :discount_repository, :discount_matcher

  def initialize(opts = {})
    @book_repository = opts[:book_repository]
    @supplier_repository = opts[:supplier_repository]
    @discount_repository = opts[:discount_repository]
    @discount_matcher = opts[:discount_matcher]
  end

  def calculate_for_book(book_id:)
    # get the requested book
    book = book_repository.get(book_id)
    items = supplier_repository.for(book: book)
    items.map do |item|
      supplier_discounts = discount_repository.for(
        supplier: item.supplier,
        book: book
      )
      discount = discount_matcher.for(
        discounts: supplier_discounts,
        book: book
      )
      OpenStruct.new(
        name: item.supplier.name,
        price: item.price,
        discounted_price: discount ? item.price * (1-discount.percent/100.0) : item.price,
        discount_reason: discount ? discount.discount.to_json : ""
      )
    end
  end
end
