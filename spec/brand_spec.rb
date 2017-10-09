require 'spec_helper'

describe(Brand) do

  it 'validates the presence of a brandname' do
    brand = Brand.new({:brandname => ""})
    expect(brand.save()).to(eq(false))
  end

  it  'ensures the length of the brandname is no longer than 100 characters' do
    brand = Brand.new({:brandname => "fluevogs".*(101)})
    expect(brand.save).to(eq(false))
  end

  it 'capitalizes the brandname' do
    brand = Brand.create({:brandname => "fluevog"})
    expect(brand.brandname).to(eq("Fluevog"))
  end

end
