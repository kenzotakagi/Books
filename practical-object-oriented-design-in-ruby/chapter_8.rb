class Bicycle
  attr_reader :size, :parts

  def initialize(args = {})
    @size = args[:size]
    @parts = args[:parts]
  end

  def spares
    parts.spares
  end
end

require 'forwardable'
class Parts
  extend Forwardable
  def_delegators :@parts, :size, :each
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    select(&:needs_spare)
  end
end

class Part
  attr_reader :name, :description, :needs_spare

  def initialize(args)
    @name = args[:name]
    @description = args[:description]
    @needs_spare = args.fetch(:needs_spare, true)
  end
end

module PartsFactory
  def self.build(config, part_class = Part, parts_class = Parts)
    parts_class.new(config.collect do |part_confing|
      part_class.new(name:        part_confing[0],
                     description: part_confing[1],
                     needs_spare: part_confing.fetch(2, true))
    end)
  end
end

road_config = [['chain',      '10-speed'],
               ['tire_size',  '23'],
               ['tape_color', 'red']]

mountain_config = [['chain',       '10-speed'],
                   ['tire_size',   '2.1'],
                   ['front_shock', 'Manitou', false],
                   ['rear_shock',  'Fox']]

puts PartsFactory.build(road_config)
puts PartsFactory.build(mountain_config)
