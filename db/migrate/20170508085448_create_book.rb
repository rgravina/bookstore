class CreateBook < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :slug
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :author
      t.string :image_url
      t.integer :pages
      t.date :published
    end
  end
end
