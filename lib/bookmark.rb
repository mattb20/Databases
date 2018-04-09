require 'pg'
require 'pry'

class Bookmark
   def self.all
     conn = PG::Connection.open(:dbname => 'bookmark_manager')
     res = conn.exec_params('SELECT url FROM bookmarks')
     res.values
   end
end
