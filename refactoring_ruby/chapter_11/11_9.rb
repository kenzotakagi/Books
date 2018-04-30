require 'forwardable'

class Policy
  extend Forwardable

  def_delegators :@rules, :size, :empty?, :[]
  attr_reader :name

  def initialize(name)
    @name = name
    @rules = {}
  end

  def <<(rule)
    key = rule.attribute
    @rules[key] ||= []
    @rules[key] << rule
  end

  def apply(account)
    @rules.each do |attribute, rules|
      rule.each { |rule| rule.apply(account) }
    end
  end
end

def Rule
  attr_reader :attribute, :default_value

  def initialize(attribute, default_value)
    @attribute, @default_value = attribute, default_value
  end

  def apply
  end
end
