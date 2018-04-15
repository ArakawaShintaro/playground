require 'pry'
# ConcreteBuilder（具体ビルダ）
class SugarWater
  attr_accessor :water, :sugar

  def initialize(water, sugar)
    @water = water
    @sugar = sugar
  end

  def add_material(sugar_amount)
    @sugar += sugar_amount
  end
end

class SaltWater
  attr_accessor :water, :salt

  def initialize(water, salt)
    @water = water
    @salt = salt
  end

  def add_material(salt_amount)
    @salt += salt_amount
  end
end

# Builder
class WaterWithMaterialBuilder
  def initialize(class_name)
    @water_with_material = class_name.new(0, 0)
  end

  def add_material(material_amount)
    @water_with_material.add_material(material_amount)
  end

  def add_water(water_amount)
    @water_with_material.water += water_amount
  end

  def result
    @water_with_material
  end
end

class Director
  def initialize(builder)
    @builder = builder
  end

  def cook
    @builder.add_water(150)
    @builder.add_material(50)
    @builder.add_water(200)
    @builder.add_material(30)
  end
end

builder = WaterWithMaterialBuilder.new(SugarWater)
director = Director.new(builder)
director.cook
p builder.result

builder = WaterWithMaterialBuilder.new(SaltWater)
director = Director.new(builder)
director.cook
p builder.result
