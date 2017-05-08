# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
books = Book.create!([{
  isbn: "978-1-93435-659-3",
  slug: "seven-languages-in-seven-weeks",
  title: "Seven Languages in Seven Weeks",
  author: "Bruce A. Tate",
  subtitle: "A Pragmatic Guide to Learning Programming Languages",
  description: "You should learn a programming language every year, as recommended by The Pragmatic Programmer. But if one per year is good, how about Seven Languages in Seven Weeks? In this book you’ll get a hands-on tour of Clojure, Haskell, Io, Prolog, Scala, Erlang, and Ruby. Whether or not your favorite language is on that list, you’ll broaden your perspective of programming by examining these languages side-by-side. You’ll learn something new from each, and best of all, you’ll learn how to learn a language quickly. Just as each new spoken language can make you smarter and increase your options, each programming language increases your mental tool kit, adding new abstractions you can throw at each new problem. Knowledge is power. The Seven in Seven series builds on that power across many different dimensions. Each chapter in each book walks you through some nontrivial problem with each language, or database, or web server. These books take commitment to read, but their impact can be profound.",
  image_url: "https://imagery.pragprog.com/products/195/btlang.jpg",
  pages: 330,
  published: "2010-10-27"
}, {
  isbn: "978-1-68050-171-1",
  slug: "agile-web-development-with-rails-5",
  title: "Agile Web Development with Rails 5",
  author: "Sam Ruby",
  subtitle: nil,
  description: "Rails 5 and Ruby 2.2 bring many improvements, including new APIs and substantial performance enhancements, and the fifth edition of this award-winning classic is now updated! If you’re new to Rails, you’ll get step-by-step guidance. If you’re an experienced developer, this book will give you the comprehensive, insider information you need for the latest version of Ruby on Rails.",
  image_url: "https://imagery.pragprog.com/products/457/rails5.jpg",
  pages: 486,
  published: "2016-09-28"
},{
  isbn: "978-1-68050-235-0",
  slug: "swift-style",
  title: "Swift Style",
  author: "Erica Sadun",
  subtitle: "An Opinionated Guide to an Opinionated Language",
  description: "Discover the do’s and don’ts involved in crafting readable Swift code as you explore common Swift coding challenges and the best practices that address them. From spacing, bracing, and semicolons to proper API style, discover the whys behind each recommendation, and add to or establish your own house style guidelines. This practical, powerful, and opinionated guide offers the best practices you need to know to work successfully in this equally opinionated programming language.",
  image_url: "https://imagery.pragprog.com/products/516/esswift.jpg",
  pages: 224,
  published: "2017-03-10"
},{
  isbn: "978-1-68050-170-4",
  slug: "core-data-in-swift",
  title: "Core Data in Swift",
  author: "Marcus Zarra",
  subtitle: "Data Storage and Management for iOS and OS X",
  description: "Core Data is intricate, powerful, and necessary. Discover the powerful capabilities integrated into Core Data, and how to use Core Data in your iOS and OS X projects. All examples are current for macOS Sierra, iOS 10, and the latest release of Core Data. All the code is written in Swift 3, including numerous examples of how best to integrate Core Data with Apple’s newest programming language.",
  image_url: "https://imagery.pragprog.com/products/464/mzswift.jpg",
  pages: 212,
  published: "2016-06-15"
},{
  isbn: "978-1-93778-546-8",
  slug: "functional-programming-in-java",
  title: "Functional Programming in Java",
  author: "Venkat Subramaniam",
  subtitle: "Harnessing the Power of Java 8 Lambda Expressions",
  description: "Get ready to program in a whole new way. Functional Programming in Java will help you quickly get on top of the new, essential Java 8 language features and the functional style that will change and improve your code. This short, targeted book will help you make the paradigm shift from the old imperative way to a less error-prone, more elegant, and concise coding style that’s also a breeze to parallelize. You’ll explore the syntax and semantics of lambda expressions, method and constructor references, and functional interfaces. You’ll design and write applications better using the new standards in Java 8 and the JDK.",
  image_url: "https://imagery.pragprog.com/products/343/vsjava8.jpg",
  pages: 196,
  published: "2014-02-28"
}])

suppliers = Supplier.create!([{
  name: "Amazon"
}])

SupplierBook.create!([{
  supplier: suppliers.first,
  book: books.first,
  price: 4600
}])
