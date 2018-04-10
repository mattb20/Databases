require 'sinatra/base'
require_relative 'bookmark'
require 'pry'

class BookmarkApp < Sinatra::Base
  get '/bookmarks' do

    

    @bookmarks = Bookmark.all
    erb :bookmarks

  end

  get '/addbookmark' do

    erb :addbookmark

  end
end
