class DiscountMatcher
  def for(discounts:, book:)
     return nil unless discounts.count.positive?
     discounts.select do |sd|
       book.language.nil? || sd.discount.language.nil? || sd.discount.language == book.language
     end.select do |sd|
       (sd.discount.start.nil? && sd.discount.end.nil?) ||
       (sd.discount.start <= Date.today && sd.discount.end >= Date.today) ||
       (sd.discount.start <= Date.today && sd.discount.end.nil?) ||
       (sd.discount.start.nil? && sd.discount.end >= Date.today)
     end.first
  end
end
