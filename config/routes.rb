Rails.application.routes.draw do
  get "books/:id", controller: :books, action: :show_better, as: :book
  root controller: :books, action: :index
end
