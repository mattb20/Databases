require 'pg'
require 'pry'
require 'uri'

class Bookmark

  attr_reader :bookmark_url


  def initialize(url)

    @bookmark_url = url
    @uri = URI.parse(url)


  end

  def is_valid_url?

    if @uri.kind_of?(URI::HTTP) or @uri.kind_of?(URI::HTTPS)

      return true

    else

      return false
    end


    # URI::DEFAULT_PARSER.regexp[:ABS_URI]

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
