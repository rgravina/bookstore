class SupplierBook < ApplicationRecord
  belongs_to :book
  belongs_to :supplier
end
