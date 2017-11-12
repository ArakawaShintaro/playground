# Class.newで定義したら外側のscopeを参照できるというメリット。
klass_object = nil

HogeClass = Class.new do |klass|
  klass_object = klass
  klass == self

  def hello
    :hello
  end
end

p klass_object == HogeClass
p HogeClass.new.hello


#クラスインスタンス変数は、継承された時には継承先では参照されない
class InstanceCountClass
  @instance_count = 0

  def self.instance_count_up
    @instance_count += 1 if @instance_count
  end

  def self.instance_count
    @instance_count
  end

  def initialize
    self.class.instance_count_up
  end
end

class NewInstanceCountClass < InstanceCountClass
end

5.times do
  InstanceCountClass.new
end

p InstanceCountClass.instance_count
p NewInstanceCountClass.instance_count #nil

class Fuga
  @@str = "fuga!!"
  define_method :instance_method, -> { puts @@str }
end

object = Fuga.new
p object.instance_method

p "-------"

class OrifinalClass
end

obj = OrifinalClass.new

def obj.new_singleton_method
  puts "new_singleton_method"
end

p obj.class
p obj.singleton_class
p obj.singleton_class.method_defined? :new_singleton_method

p 'シングルトンオブジェクト'

SINGLETON_OBJECT = object.new

class << SINGLETON_OBJECT
  def only_method
    puts "only_method"
  end
end
