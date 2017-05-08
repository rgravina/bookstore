class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
    end
    create_table :supplier_books do |t|
      t.belongs_to :supplier
      t.belongs_to :book
      t.price :integer
    end
  end
end
