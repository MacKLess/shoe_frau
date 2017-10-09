require 'spec_helper'

describe(Store) do

  it 'validates the presence of store name' do
    store = Store.new({:name => ""})
    expect(store.save).to(eq(false))
  end

  it 'makes sure that a store name does not exceed 100 characters in length' do
    store = Store.new({:name => "HofHoofers".*(101)})
    expect(store.save).to eq(false)
  end

  it 'capitalizes the name of every store' do
    store = Store.create({:name => "hofhoofers"})
    expect(store.name).to(eq("Hofhoofers"))
  end

end
