class BookRepository
  def all
    Book.all
  end

  def get(id)
    Book.find(id)
  end
end
