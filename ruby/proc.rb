def proc_factory
  Proc.new
end

block_proc = proc_factory { 'hoge' }
p block_proc.call
p block_proc.call('hoge')
p block_proc['hoge']

sum_proc = Proc.new { |a,b| a + b }
p sum_proc === [1,2]
# ===は==のエイリアスではなく、procが実行されるようになっている

#when節のレシーバ === case式の比較される値
def what_class(obj)
  case obj
  when proc { |x| x.kind_of? String }
    String
  when proc { |x| x.kind_of? Numeric }
    Numeric
  else
    Class
  end
end

p what_class "string"

proc_obj = proc { 1 }
p proc_obj.call

#カリー化
add = Proc.new { |x,y| x + y }
inc = add.curry.(1)
p inc.(2)

#procの他の作り方
obj = lambda { 1 }
p obj.call

inc = ->(x) { x + 1 }
p inc.(1)

# クロージャ
def create_proc
  str = 'create_proc'
end

proc_obj = create_proc
str = 'from toplevel'

p create_proc
