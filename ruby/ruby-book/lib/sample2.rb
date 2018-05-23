require 'pry'

def greeting
  puts 'おは'

  yield "hogehoge"

  puts "こんばん"
end

greeting do |text|
  puts "hoge" + text
  binding.pry
end

