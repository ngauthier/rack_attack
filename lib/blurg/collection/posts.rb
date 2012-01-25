class Blurg::Collection::Posts
  def self.create(*attributes)
    table do |t|
      t.insert(*attributes)
    end
  end

  def self.all
    table do |t|
      t.all.map do |row|
        Blurg::Model::Post.new(row)
      end
    end
  end

  private

  def self.table
    Blurg::Database.connection do |c|
      yield c[:posts]
    end
  end
end
