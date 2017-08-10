require 'sinatra'
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
