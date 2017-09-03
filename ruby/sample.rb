trap :EXIT do
  puts "Finalizing..."
end
puts "Running..."

require_relative('sample2')

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
