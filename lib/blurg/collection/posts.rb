class Blurg::Collection::Posts
  include Enumerable

  def self.create(*attributes)
    table do |t|
      t.insert(*attributes)
    end
  end

  def each
    all = table {|t| t.all }
    all.each do |row|
      yield Blurg::Model::Post.new(row)
    end
  end

  private

  def self.table
    Blurg::Database.connection do |c|
      yield c[:posts]
    end
  end
  def table(*args, &block); self.class.table(*args, &block) end
end
