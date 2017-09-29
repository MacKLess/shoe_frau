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

delete('/deletestore') do
  @store = Store.find(params.fetch(:id).to_i)
  store_ids = params.fetch('store_ids')
  store_ids.each do |store_id|
  checked_store = Store.find(store_id)
  @store.destroy(checked_store)
  end
  @store.save
  erb(:index)
end

get('/stores/:id') do
  @store = Store.find(params[:id].to_i)
  erb(:stores)
end

patch('/stores/:id/edit') do
  @store = Store.find(params[:id].to_i)
  @store = params.fetch('name')
  @store.save
  redirect '/'
end
