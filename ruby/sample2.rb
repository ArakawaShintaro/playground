puts "こんちは"

return unless $0 == __FILE__

puts "このファイルは直接実行された"


# def hello(hoge)
#   puts hoge.call
# end

# def block_sample(&block) yeildを使用せずブロックを仮引数として受け取ると他のメソッドに投げれたりする
#   puts 'first'

#   hello(block) if block

#   puts 'three'
# end

# block_sample do
#   puts "two"
# end

# people = ["hoge", "fuga", "piyo"]
# block = Proc.new {|name| puts name}

# people.each &block

# people = ["hoge", "fuga", "piyo"]
# p people.map {|person| person.upcase}
# 同じ結果
# p people.map(&:upcase)


# someone = "ara"
# someoneもブロックローカル変数に
# ["hoge", "piyo"].each do |person; someone|
#   someone = person
# end
#基本的にデバックはpでよさげ
# p someone
