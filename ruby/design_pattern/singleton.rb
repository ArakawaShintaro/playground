require 'singleton'
require 'pry'

class SingletonObject
  include Singleton
  attr_accessor :counter

  def initialize
    @counter = 0
  end
end

obj1 = SingletonObject.instance
obj1.counter += 1

obj2 = SingletonObject.instance
puts obj2.counter
# instanceが引き継がれる つまりこの場合は1になっている
# newはerrorになる
