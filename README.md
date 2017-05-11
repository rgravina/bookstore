# Bookstore Sample App

This app was prepared for a (talk)[https://github.com/rails-oceania/roro/files/989921/rails-repositories-talk.pdf] on refactoring Rails controllers to:

  * Move logic out of controllers and into other objects
  * Use services and repositories to factor database concerns out of your domain models
  * Keep your application logic separate from accessing the outside world - web requests, database access etc.

## Setup

```
rake db:create    # create an SQLite database
rake db:migrate   # creates tables for books, suppliers etc.
rake db:seed      # creates some books, suppliers, discounts etc.
```

Then run the app with `rails s`.

## Overview

The app lists the titles and covers of a few programming books. Clicking one takes you to page which shows you a list of suppliers which supply the book, the price they supply it for, and a discounted price (if applicable). Discounts are matched based on entries in `supplier_discounts` and `discounts` tables. If there is a discounted price, the reason (currently just a JSON representation of an object) is supplied.
