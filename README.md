# Bookstore Sample App

This app was prepared for a talk on refactoring Rails controllers to:

  * Move logic out of controllers and into other objects
  * Use services and repositories to factor database concerns out of your domain models
  * keep your application logic separate from accessing the outside world - web requests, database access etc.

## Setup

```
rake db:create    # create an SQLite database
rake db:migrate   # creates tables for books, suppliers etc.
rake db:seed      # creates some books, suppliers, discounts etc.
```

Then run the app with `rails s`.
