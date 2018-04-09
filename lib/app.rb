require 'sinatra/base'
require_relative 'bookmark'
class BookmarkApp < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
end
