class SupplierDiscount < ApplicationRecord
  belongs_to :discount
  belongs_to :supplier
end
