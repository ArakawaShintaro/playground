# file = File.open('sample.txt')
# puts file.read
# file.close

# File.open 'sample.txt' do |file|
#   puts file.read
# end

# 最後にnilを返す
# File.open 'sample.txt' do |f|
#   while line = f.gets
#     puts line
#   end
# end

# 1行ずつ繰り返す
# File.open 'sample.txt' do |f|
#   f.each_line do |line|
#     puts line
#   end
# end

# モード指定
File.open 'sample.txt', 'a' do |f|
  f.write 'Hello'
end
