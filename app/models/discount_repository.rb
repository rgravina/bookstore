class DiscountRepository
  def get(id)
    Discount.find(id)
  end

  def for(supplier:, book:)
     SupplierDiscount.where(supplier: supplier)
  end
end
