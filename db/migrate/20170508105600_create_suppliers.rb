class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
    end
    create_table :discounts do |t|
      t.string :skill
      t.string :language
      t.integer :pages
      t.date :start
      t.date :end
    end
    create_table :supplier_books do |t|
      t.belongs_to :supplier
      t.belongs_to :book
      t.integer :price
    end
    create_table :supplier_discounts do |t|
      t.belongs_to :supplier
      t.belongs_to :discount
      t.integer :percent
    end
  end
end
