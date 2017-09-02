#false nil 以外は真
if ""
  puts "hoge"
end

class Hoge
  # def length=(val)
  #   @length = val
  # end

  # def length
  #   @length
  # end
  attr_accessor :length
end

hoge = Hoge.new
hoge.length = 10
puts hoge.length

puts $LOAD_PATH
