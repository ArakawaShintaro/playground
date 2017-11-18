class InstanceVal
  def initialize
    @foo = "foo"
    @bar= "bar"
  end
end

instance_val = InstanceVal.new
hoge = instance_val.instance_variables.select do |valiable_name|
  valiable_name =~ /fo/
end
hoge

class Hello
  def hi
    'hi'
  end

  def hello(name)
    "hello #{name}"
  end
end

hello = Hello.new
hello.__send__ :hi #(sendでも可能)

class RemovedMethodClass
  def first_method; end
  def second_method; end
end

RemovedMethodClass.instance_methods(false)
#クラスのコンテキストで実行しているのと同じ
RemovedMethodClass.class_eval do
  remove_method :second_method
end
RemovedMethodClass.instance_methods(false)

def sample
  a = 1
  binding
end

eval("p a", sample)

