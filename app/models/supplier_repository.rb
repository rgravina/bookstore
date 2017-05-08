class SupplierRepository
  def get(id)
    Supplier.find(id)
  end

  def for(book:)
    SupplierBook.where(book: book)
  end
end
