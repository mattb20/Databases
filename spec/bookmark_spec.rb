require 'bookmark'


describe Bookmark do

 describe "#initialize" do
   it 'initiates a bookmark object' do
     bookmark = Bookmark.new('http://makersacademy.com')
     expect(bookmark).to be_an_instance_of(Bookmark)
   end
 end


describe "#is_valid_url?" do
  it "returns true when given a valid URL" do
    bookmark = Bookmark.new('http://makersacademy.com')



    expect(bookmark.is_valid_url?).to eq true
  end
end
 # describe "#self.create" do
 #   it 'creates a new bookmark' do
 #     BookmarkManager.create('http://reddit.com')
 #     expect(BookmarkManager.all).to eq 'http://reddit.com'
 #   end
 # end
end
