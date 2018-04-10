require 'sinatra/base'
require_relative 'bookmark'
require 'pry'

class BookmarkApp < Sinatra::Base
  get '/bookmarks' do



    @bookmarks = Bookmark.all
    erb :bookmarks
    @bookmark = Bookmark.new(session[:bookmark])


  end

  get '/addbookmark' do

    erb :addbookmark

  end

  post '/bookmarks' do
    session[:bookmark] = params[:'addbookmark']

  end
end
