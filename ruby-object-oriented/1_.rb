class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel = nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

wheel = Wheel.new(26, 1.5)
puts Gear.new(52, 11, wheel).gear_inches
puts Gear.new(52, 11).ratio

# データ構造の隠蔽

class Hoge
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect { |wheel| wheel.rim + wheel.tire * 2 }
  end

  Wheel = Struct.new(:rim, :tire) do
    def wheelify(data)
      data.collect { |cell| Wheel.new(cell[0], cell[1]) }
    end
  end
end
