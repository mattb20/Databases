require 'sinatra/base'
require_relative 'bookmark'
require_relative 'bookmarkmanager'
require 'pry'

class BookmarkApp < Sinatra::Base
  get '/bookmarks' do



    @bookmarks = BookmarkManager.all
    erb :bookmarks


  end

  get '/addbookmark' do

    erb :addbookmark

  end

  post '/bookmarks' do
    url = params[:'addbookmarkurl']
    bookmark = Bookmark.new(url)
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    if bookmark.is_valid_url?
      BookmarkManager.create(url: url)
    else
      redirect '/invalidbookmark'
    end
    redirect('/bookmarks')

  end

  get '/invalidbookmark' do

    erb :invalidbookmark

  end
end
