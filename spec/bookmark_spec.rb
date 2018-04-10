require 'bookmark'


describe Bookmark do
 describe "#bookmark_url" do
   it 'returns a URL' do
     bookmark = Bookmark.new('http://google.com')
     expect(bookmark.bookmark_url).to eq 'http://google.com'
   end
 end
end
