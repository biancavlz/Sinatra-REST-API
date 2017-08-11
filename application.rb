require 'sinatra'
require 'sinatra/json'
require 'bundler'

Bundler.require
require 'review'

DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.finalize
DataMapper.auto_migrate!


get '/' do
  "hello"
end

get '/reviews' do
  content_type :json

  reviews = Review.all
  reviews.to_json
end

post '/reviews' do
  review = Review.new params[:review]

  if review.save
    status 201
  else
    status 500
    json review.errors.full_messages
  end
end

put '/reviews/:id' do
  review = Review.get.params[:id]

  if review.update params[:review]
    status 200
    json "Review was updated successfully."
  else
    status 500
    json review.errors.full_messages
  end
end

delete '/reviews/:id' do
  review = Review.get params[:id]
  if review.destroy
    status 200
    json "Review was sucessfully removed."
  else
    status 500
    json "It was a problem removing the review."
  end
end
