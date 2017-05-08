class Supplier < ApplicationRecord
  has_many :supplier_books
  has_many :books, through: :supplier_books
  has_many :supplier_discounts
  has_many :discounts, through: :supplier_discounts
end
