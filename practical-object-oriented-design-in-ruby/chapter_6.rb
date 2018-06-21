class Bycicle
  attr_reader :size, :chain, :tire_size

  def initialize(args = {})
    @size = args[:size]
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def post_initialize(args)
    nil
  end

  def local_spares
    {}
  end

  def spares
    { tire_size: tire_size,
      chain: chain }.merge(local_spares)
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end

class RoadBike < Bycicle
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    { tape_color: tape_color }
  end

  def default_tire_size
    '23'
  end
end

class MountainBike < Bycicle
  attr_reader :front_shock, :rear_shock

  def post_initialize
    @front_shock = front_shock
    @rear_shock = rear_shock
  end

  def local_spares
    { rear_shock: rear_shock }
  end

  def default_tire_size
    '2.1'
  end
end

class RecumbentBike < Bycicle
end

road_bike = RoadBike.new(size: 'M', tape_color: 'red')
puts road_bike.tire_size
puts road_bike.chain
bent = RecumbentBike.new
