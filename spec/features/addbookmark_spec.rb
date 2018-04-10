require './lib/app'

feature 'a bookmark can be added to the list of bookmarks' do
  scenario 'the user has a form to enter bookmark' do
    visit '/addbookmark'
    expect(page).to have_field("addbookmark")
  end
end
