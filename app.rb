require 'bundler/setup'
Bundler.require(:default)
require 'pry'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @brands = Brand.all
  @stores = Store.all
  erb(:index)
end

post('/') do
  name = params.fetch("name")
  store = Store.create({:name => name})
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

post('/brand/add') do
  brandname = params.fetch("brandname")
  price = params.fetch("price")
  brand = Brand.create({:brandname => brandname, :price => price})
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end
