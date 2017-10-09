require 'capybara/rspec'
require './app'
require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'adding stores to the mainpage', {:type => :feature} do
  it 'allows the user to add stores to the mainpage' do
    visit('/')
    fill_in('name', :with => 'Vibrams')
    click_button('Add store!')
    expect(page).to have_content('Vibrams')
  end
end

describe 'adding brands to the mainpage', {:type => :feature} do
  it 'allows the user to add brands to the mainpage' do
    visit('/')
    fill_in('brandname', :with => 'Fluevogs')
    fill_in('price', :with => '200')
    click_button('Add brand!')
    expect(page).to have_content('Fluevogs')
  end
end

describe 'delete store from the store list', {:type => :feature} do
  it 'allows the user to remove stores from the store list' do
    visit('/')
    fill_in('name', :with => 'Vibrams')
    click_button('Add store!')
    check('Vibrams')
    click_button('Delete store')
    expect(page).to have_no_content('Vibrams')
  end
end
