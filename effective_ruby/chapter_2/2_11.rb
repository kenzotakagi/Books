module Cluster
  class Array
    def initialize(n)
      @disk = ::Array.new(n) { |i| "disk#{i}" }
    end
  end
end
