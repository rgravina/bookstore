class SupplierBook < ApplicationRecord
  belongs_to :book
  belongs_to :supplier

  def discounted_price
    return price unless supplier_discount
    price * (1 - (supplier_discount.percent/100.0))
  end

  # gets first discount and gets human readable description
  def discount_reason
    supplier_discount ? OpenStruct.new(
    percent: supplier_discount.percent,
    language: supplier_discount.discount.language,
    start: supplier_discount.discount.start,
    end:  supplier_discount.discount.end
  ).to_json : nil
  end

  private

  # looks for a discount which matches by date or language or has no conditions
  def supplier_discount
    supplier.supplier_discounts
    .select do |sd|
      book.language.nil? || sd.discount.language.nil? || sd.discount.language == book.language
    end
    .select do |sd|
      true
      (sd.discount.start.nil? && sd.discount.end.nil?) ||
      (sd.discount.start <= Date.today && sd.discount.end >= Date.today) ||
      (sd.discount.start <= Date.today && sd.discount.end.nil?) ||
      (sd.discount.start.nil? && sd.discount.end >= Date.today)
    end.first
  end
end
