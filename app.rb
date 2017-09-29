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
  store_ids = params.fetch('store_ids')
  store_ids.each do |store_id|
    checked_store = Store.find((store_id).to_i)
    Store.all.destroy(checked_store.id)
  end
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

get('/stores/:id') do
  @store = Store.find(params[:id].to_i)
  @brands = @store.brands
  erb(:stores)
end

#this is supposed to add brands to store in a checkbox format.
post('/stores/:id/brands') do
  @store = Store.find(params[:id].to_i)
  # @brands = @store.brands
  brand_ids = params.fetch('brand_ids')
  brand_ids.each do |brand_id|
  checked_brand = Brand.find(brand_id)

  end

  @store.brands.push(@brands)
  @store.save
  erb(:stores)
end

patch('/stores/:id/edit') do
  @store = Store.find(params[:id].to_i)
  @store.update({name: params['name']})
  redirect '/'
end
