class Blurg::Post
  def self.create(attributes = {})
    table do |t|
      t.insert(attributes)
    end
  end

  def self.table
    Blurg::Database.connection do |c|
      yield c[:posts]
    end
  end
end
