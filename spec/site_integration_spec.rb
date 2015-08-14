require 'capybara/rspec'
require 'word'
require 'definition'
require './app'

Capybara.app = Sinatra::Application

describe 'when the user views the index page', { :type => :feature } do

  before { visit '/' }

  it 'should display a form' do
    expect(page).to have_content 'Dictionary'
    expect(page).to have_content 'Word to Define'
    expect(page).to have_content 'Origin of Word'
  end

  context 'when filling out the form with all elements' do
    it 'should allow the user to create a new word by filling in the form and redirect to that page' do
      fill_in 'Word to Define', with: 'Bacon'
      fill_in 'Origin of Word', with: 'Merica'
      click_button 'Add Word'
      expect(page).to have_content 'Bacon'
      expect(page).to have_content 'Definition'
    end

    it 'should allow the user to click on the link of the word and move to its page and create a new definition' do
      click_link 'Bacon'
      expect(page).to have_content 'Definition'
    end

    it 'should allow the user to create a new definition for the word' do
      click_link 'Bacon'
      fill_in 'text',                 with: 'an awesome food'
      fill_in 'part_of_speech',       with: 'noun'
      fill_in 'example',              with: 'The comedian Jim Gaffigan is obsessed with bacon.'
      click_button 'Add the definition!'
      expect(page).to have_content 'an awesome food'
      expect(page).to have_content 'The comedian Jim Gaffigan is obsessed with bacon.'
    end
  end
end


describe 'when the user types in the wrong address for the url', { :type => :feature } do
  it 'should send them to the index and display a friendly message' do
    visit '/bobisyouruncle'
    expect(page).to have_content 'Dictionary'
    expect(page).to have_content 'got your back!'
  end
end
