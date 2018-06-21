class Bycicle
  attr_reader :size

  def initialize(args = {})
    @size = args[:size]
  end
end

class RoadBike < Bycicle
  attr_reader :tape_color

  def initialize(args)
    @tape_color = args[:tape_color]
    super(args)
  end
end

class MountainBike < Bycicle
end
