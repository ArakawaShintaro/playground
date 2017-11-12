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
