require 'sinatra/base'

class BookmarkApp < Sinatra::Base

  get '/bookmarks' do

    @bookmarks = Bookmark.all

    erb :bookmarks

  end
end
