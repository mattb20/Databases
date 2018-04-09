require './lib/app'
require './lib/bookmarkmanager'


feature 'a link can be viewed' do
  scenario 'user chooses bookmark to be viewed' do

    visit('/bookmarks')
    expect(page).to have_content('http://www.google.com')
  end
end
