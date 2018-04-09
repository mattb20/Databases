require 'bookmarkmanager'

describe BookmarkManager do
  subject(:bookmarks) { described_class.new }

  describe '#all' do
    it 'returns an array' do

      expect(bookmarks.all).to be_an_instance_of Array

    end


  end

  #
  # describe '#view' do
  #   it 'returns a bookmark' do
  #
  #     expect(page).to have_content 'Github'
  #
  #   end
  # end

end
