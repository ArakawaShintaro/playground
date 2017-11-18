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
eval("p a", sample)

