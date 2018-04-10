require 'bookmarkmanager'

describe BookmarkManager do

  describe '.all' do

    it 'returns all bookmarks' do

      connection = PG.connect(dbname: 'bookmark_manager_test')

      #Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://destroyallsoftware.com');")

      expected_bookmarks = [
        'http://makersacademy.com',
        'http://destroyallsoftware.com'

      ]
      expect(BookmarkManager.all).to eq expected_bookmarks


    end
  end

end
