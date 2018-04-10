class BookmarkManager
  def initialize

    @bookmarks = []

  end

  # def all
  #   @bookmarks
  # end

  def self.all

    if ENV['ENVIRONMENT'] == 'test'

      conn = PG::Connection.open(:dbname => 'bookmark_manager_test')

    else
      conn = PG::Connection.open(:dbname => 'bookmark_manager')
    end
    res = conn.exec_params('SELECT url FROM bookmarks')
    res.values.flatten

  end

  def self.create(options)
    p options

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url) VALUES('#{options[:url]}');")
  end

end
