require('csv')
class AnnualWeather
  def initialize(fill_name)
    @readings = []

    CSV.foreach(file_name, headers: true) do |raw|
      @readings << {
        :date => Date.parse(raw[2]),
        :high => raw[10].to_f,
        :low => raw[11].to_f,
      }
    end
  end

  def mean
    return 0.0 if @readings.size.zero?

    total = @readings.reduce(0.0) do |sum, reading|
      sum + (reading[:high] + reading[:low]) / 2.0
    end

    total / @readings.size.to_f
  end
end

class AnnualWeather
  Reading = Strunct.new(:data, :high, :low)

  def initialize(file_name)
    @readings = []

    CSV.foreach(file_name, headers: true) do |raw|
      @readings << Reading.new(Data.parse(row[2]), row[10].to_f, row[11].to_f)
    end
  end

  def mean
    return 0.0 if @readings.size.zero?

    total = @readings.reduce(0.0) do |sum, reading|
      sum + (reading.high + reading.low) / 2.0
    end

    total / @readings.size.to_f
  end
end
