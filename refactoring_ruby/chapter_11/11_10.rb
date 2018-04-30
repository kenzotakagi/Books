require "forwardable"
module Person
  attr_accessor :name

  def last_name
    @name.split(" ").last
  end
end

class Employee
  include Person
  def initialize
    @person = self
  end

  def to_s
    "Emp: #{last_name}"
  end
end

