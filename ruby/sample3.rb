# class FriendList
#   include Enumerable

#   def initialize(*friends)
#     @friend = friends
#   end

#   def each
#     puts "呼ばれたよ"
#     for v in @friend
#       yield v
#     end
#   end
# end

# friend_list = FriendList.new('Arakawa', 'Shin', 'Taro')

# friend_list.map {|hoge| puts hoge.upcase}

# class Rular
#   attr_accessor :length

#   def initialize(length)
#     self.length = length
#   end

#   def ==(other)
#     length == self.length
#   end
#   同一性から同値性に変更
#   基本的には同値性にオーバーライドされている
# end

# r1 = Rular.new(30)
# r2 = Rular.new(30)

# p r1 == r2 //true

# '24-1-365'.sub(/[0-9]+/, 'x') => "x-1-365"
# gsubだと全てxに置換される "x-x-x"

# p 'Alice'.each_char.to_a

# s = String.new(capacity: 10)

# 2000.times do
#   s << 'helli'
# end

# puts s

# def alice?(pattern)
#   pattern === 'alice'
# end

# p alice?(/Alice/i)
# p alice?('alice')

# str = 'ruby4'

# if matched = /[0-9]/.match(str)
#   p matched
# end

# people = %w(Arakwa Shin Taro)
# p people.min_by { |s| s.length }
# p people.minmax_by { |s| s.length }

# p people.sort { |a,b| a.length <=> b.length }
# p people

# p Array.new(3) { |i| i.succ + 3 }

# p [1,2,3].eql?(["1","2","3"]) false

# hash = { foo: 1, bar: 2, baz: 3 }
# p hash.select! { |key, value| true }
# # keep_ifにしたらselfが返却される

# p hash.select { |key, val| val.odd? }
# p hash
# # 破壊的ではない

# def keywords(options)
#   defaults = { alice: 'ありす', bob: 'ぼぶ' }
#   hash = defaults.merge(options)
#   hash
# end

# p keywords bob: 'ボブ'
# # オプション引数はHashとして受け取られる

# hash = { foo: nil }
# hash[:hoge] => nil
# hash[:foo] => nil

# hash.has_key?(:unknown) => false
# hash.has_key?(:foo) => true

hash = { one: 1, two: 2, hoge: 2 }
p hash.keys
p hash.key(2)
