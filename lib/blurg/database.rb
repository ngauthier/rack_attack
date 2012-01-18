require 'sequel'
class Blurg::Database
  class << self
    def connection(url = ENV['DATABASE_URL'])
      yield Sequel.connect(url)
    end

    def reset
      connection do |c|
        c.drop_table :posts if c.table_exists? :posts
        c.create_table :posts do
          primary_key :id
          String      :title
        end
      end
    end
  end
end
