class Base
  def m1(x, y)
    puts "its Base!"
    puts x, y
  end
end

class Derived < Base
  def m1(x, y)
    puts "its Derived"
    puts x, y
    super()
  end
end

module CoolFeatures
 def feature_a
   puts "its module"
 end
end

class Valila
  include(CoolFeatures)
  def feature_a
    super
  end
end
