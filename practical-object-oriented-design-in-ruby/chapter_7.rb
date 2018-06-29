class Schedule
  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class} is not scheduled between #{start_date} and #{end_date}"
    false
  end
end
#
# class Bicycle
#   attr_reader :schedule, :size, :chain, :tire_size
#
#   def initialize(args = {})
#     @schedule = args[:schedule] || Schedule.new
#   end
#
#   def schedulable?(start_date, end_date)
#     puts !scheduled?(start_date - lead_days, end_date)
#   end
#
#   def scheduled?(start_date, end_date)
#     schedule.scheduled?(self, start_date, end_date)
#   end
#
#   def lead_days
#     1
#   end
# end
#
# require 'date'
# starting = Date.parse('2018/06/26')
# ending = Date.parse('2018/06/30')
# b = Bicycle.new
# b.schedulable?(starting, ending)

##################

module Schedulable
  attr_writer :schedule

  def schedule
    @schedule || ::Schedule.new
  end

  def schedulable?(start_date, end_date)
    puts !scheduled?(start_date - lead_days, end_date)
  end

  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  def lead_days
    0
  end
end

class Bicycle
  include Schedulable

  def lead_days
    1
  end
end

require 'date'
starting = Date.parse('2018/06/26')
ending = Date.parse('2018/06/30')
b = Bicycle.new
b.schedulable?(starting, ending)

class Vehicle
  include Schedulable

  def lead_days
    3
  end
end

class Mechanic
  include Schedulable

  def lead_days
    4
  end
end
