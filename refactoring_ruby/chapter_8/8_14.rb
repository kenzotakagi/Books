class RigidMountainBike
  def initialize(params)
    @tire_width = params[:tire_width]
  end

  def upgrade_parameters
    {
      tire_width: @tire_width,
      base_price: @base_price,
      commission: @commission
    }
  end

  def off_road_ability
    @tire_width * MountainBike::TIRE_WIDTH_FACTOR
  end

  def price
    (1 + @commission) * @base_price
  end
end

class FrontSuspensiondMountainBike
  def initialize(params)
    @tire_width = params[:tire_width]
    @front_fork_travl = params[:front_fork_travel]
  end

  def upgrade_parameters
    {
      tire_width: @tire_width,
      base_price: @base_price,
      commission: @commission,
      front_fork_travel: @front_fork_travel,
      base_price: @base_price,
      commission: @commission
    }
  end

  def off_road_ability
    @tire_width * MountainBike::TIRE_WIDTH_FOCTOR +
    @front_fork_travel * MountainBike::FRONT_SUSPENSION_FACTOR
  end

  def price
    (1 + @commission) * @base_price + @front_suspension_price
  end
end

class FullSuspensionMountainBike
  def initialize(params)
    @tire_width = params[:tire_width]
    @front_fork_travl = params[:front_fork_travel]
    @rear_fork_travel = params[:rear_fork_travel]
  end

  def off_road_ability
    @tire_width * MountainBike::TIRE_WIDTH_FOCTOR +
    @front_fork_travel * MountainBike::FRONT_SUSPENSION_FACTOR +
    @rear_fork_travel * MountainBike::REAR_SUSPENSION_FACTOR
  end

  def price
    (1 + @commission) * @base_price + @front_suspension_price + @rear_suspension_price
  end
end

class MountainBike
  extend Forwardable
  def_delegators :@bike_type, :off_road_ability, :price
  attr_reader :type_code

  def initialize(bike_type)
    @bike_type = bike_type
  end

  def add_front_suspension(params)
    @bike_type = FrontSuspensionMountainBike.new(@bike_type.upgradeble_parameters.merge(params))
  end

  def add_rear_suspension(params)
    unless @bike_type.is_a?(FrontSuspensionMountainBike)
      raise "You can't add rear suspension unless you hava front suspension"
    end

    @bike_type = FullSuspensiontMountainBike.new(@bike_type.upgradable_parameters.merge(params))
  end
end
