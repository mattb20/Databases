require 'pg'
require 'pry'

class Bookmark

  attr_reader :bookmark_url


  def initialize(url)
    @bookmark_url = url
  end


  # def self.create(options)
  # if ENV['ENVIRONMENT'] == 'test'
  #   connection = PG.connect(dbname: 'bookmark_manager_test')
  # else
  #   connection = PG.connect(dbname: 'bookmark_manager')
  # end
  #
  # connection.exec("INSERT INTO bookmarks (url) VALUES('#{options[:url]}')")
  # end



end
