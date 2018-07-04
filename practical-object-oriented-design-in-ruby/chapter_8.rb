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

require 'ostruct'
module PartsFactory
  def self.build(config, parts_class = Parts)
    parts_class.new(config.collect { |part_confing| create_part(part_confing) })
  end

  def self.create_part(part_confing)
    OpenStruct.new(name:        part_confing[0],
                   description: part_confing[1],
                   needs_spare: part_confing.fetch(2, true))
  end
end

road_config = [['chain',      '10-speed'],
               ['tire_size',  '23'],
               ['tape_color', 'red']]

mountain_config = [['chain',       '10-speed'],
                   ['tire_size',   '2.1'],
                   ['front_shock', 'Manitou', false],
                   ['rear_shock',  'Fox']]

road_bike = Bicycle.new(size: 'L', parts: PartsFactory.build(road_config))
puts road_bike.spares
mountain_bike = Bicycle.new(size: 'L', parts: PartsFactory.build(mountain_config))
puts mountain_bike.spares
