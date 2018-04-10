require 'pg'
require 'pry'

class Bookmark

  attr_reader :bookmark_url

  def initialize(url)
    @bookmark_url = url
  end

end
