# Sinatra-RESTful API
## Description

This is a basic Sinatra RESTful API.

## Requirements

* ruby version >= 2.2.0
* ```gem install bundler```

## How to use it

### Star the service with:

```ruby -Ilib application.rb```

### Do a request via curl

``` curl http://localhost:4567 ```

### GET the list of reviews

``` curl http://localhost:4567/reviews ```

### GET a single review

``` curl http://localhost:4567/reviews/1 ```

### POST a new review
``` curl -d "review[name]=Hola&review[text]=mundo" http://localhost:4567/reviews ```

### UPDATE a review

``` curl -X PUT -d "review[name]=hey" http://localhost:4567/reviews/1 ```

### DELETE a review

``` curl -X DELETE http://localhost:4567/reviews/1 ```


