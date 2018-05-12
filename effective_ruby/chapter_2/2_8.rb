class Parent
  def initialize(name, grade)
    puts "parent"
    puts name, grade
  end
end

class Child < Parent
  def initialize(name, grade)
    puts "child"
    super
  end
end
