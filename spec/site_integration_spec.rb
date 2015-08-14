require 'capybara/rspec'
require 'word'
require 'definition'
require './app'

Capybara.app = Sinatra::Application

describe 'when the user views the index page', { :type => :feature } do
  before do
    visit '/'
  end

  it 'should display a form' do
    expect(page).to have_content 'Dictionary'
    expect(page).to have_content 'Word to Define'
    expect(page).to have_content 'Origin of Word'
  end

  context 'when filling out the form with all elements' do
    it 'should allow the user to create a new word by filling in the form and redict to that page' do
      fill_in 'Word to Define', with: 'Bacon'
      fill_in 'Origin of Word', with: 'Merica'
      click_button 'Add Word'
      expect(page).to have_content 'Bacon'
      expect(page).to have_content 'Definition'
      expect(page).to have_content 'Part of Speech'
      expect(page).to have_content 'Use it in a sentence'
    end
  end

end
