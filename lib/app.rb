require 'sinatra/base'

class BookmarkApp < Sinatra::Base

  get '/bookmarks' do

    @bookmarks = ['Github']

    erb :bookmarks

  end
end
