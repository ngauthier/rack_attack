require 'sequel'
class Blurg::Database
  def self.connection
    yield Sequel.connect('sqlite://db/blurg.db')
  end

  def self.reset
    connection do |c|
      c.create_table :posts do
        primary_key :id
        String      :title
      end
    end
  end
end
