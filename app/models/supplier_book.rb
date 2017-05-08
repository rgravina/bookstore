class SupplierBook < ApplicationRecord
  belongs_to :book
  belongs_to :supplier

  def discounted_price
    return price unless supplier.supplier_discounts.count.positive?
    supplier_discount = supplier.supplier_discounts.first
    price * (1 - (supplier_discount.percent/100.0))
  end
end
