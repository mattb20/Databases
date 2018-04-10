require './lib/app'
require './lib/bookmarkmanager'
require 'pg'


# feature 'a link can be viewed' do
#   scenario 'user chooses bookmark to be viewed' do
#
#     visit('/bookmarks')
#     expect(page).to have_content('http://google.com')
#   end

  feature 'Viewing bookmarks' do
    scenario 'A user can view bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      #Add in test data
      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://makersacademy.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://destroyallsoftware.com');")

      visit('/bookmarks')

      expect(page).to have_content "http://makersacademy.com"
      expect(page).to have_content "http://destroyallsoftware.com"

    end

end
