class MethodObj
  def hoge(); end
  def fuga(x); end
  def piyo(x, *y); end
end

method_obj = MethodObj.new
p method_obj.method(:hoge).parameters
p method_obj.method(:fuga).parameters
p method_obj.method(:piyo).parameters
