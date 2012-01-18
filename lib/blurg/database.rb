require 'sequel'
class Blurg::Database
  def self.connection
    yield Sequel.connect('sqlite://db/blurg.db')
  end

  def self.reset
    connection do |c|
      c.drop_table :posts if c.table_exists? :posts
      c.create_table :posts do
        primary_key :id
        String      :title
      end
    end
  end
end
