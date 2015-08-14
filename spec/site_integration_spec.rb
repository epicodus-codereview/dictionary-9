require 'capybara/rspec'
require 'word'
require 'definition'
require './app'

Capybara.app = Sinatra::Application

describe 'when the user views the index page', { :type => :feature } do
  it 'should display all of the current definitions and a form to add more' do
    visit '/'
    expect(page).to have_content 'Dictionary'
    expect(page).to have_content 'Word to Define'
    expect(page).to have_content 'Origin of Word'
  end
end
