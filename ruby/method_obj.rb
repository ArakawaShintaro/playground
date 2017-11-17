class MethodObj
  def hoge(); end
  def fuga(x); end
  def piyo(x, *y); end
end

method_obj = MethodObj.new
p method_obj.method(:hoge).parameters
p method_obj.method(:fuga).parameters
p method_obj.method(:piyo).parameters

#UnbounedMethod
p Array.instance_method(:shift)
p [].method(:shift).unbind

unbind_shift = [].method(:shift).unbind
unbind_shift.bind([1,2,3])
p unbind_shift.bind([1,2,3]).call
