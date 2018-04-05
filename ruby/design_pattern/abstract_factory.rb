# 動物
class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts "アヒルの#{@name}は食事なう"
  end
end

class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts "カエルの#{@name}は食事なう"
  end
end

# 植物
class Algae
  def initialize(name)
    @name = name
  end

  def grow
    puts "藻 #{@name} は成長中です"
  end
end

class WaterLily
  def initialize(name)
    @name = name
  end

  def grow
    puts "スイレン #{@name} は成長中です"
  end
end
