# puts Dir.entries('.')

# puts ""

# Human = Struct.new('Human', :age, :gender) {
#   def teen?
#     (13..19).include?(age)
#   end
#   puts self
# }

# Human.new(10).teen?

str = "hoge"
p ObjectSpace._id2ref(str.object_id)
ObjectSpace.define_finalizer(str) do
  puts 'finalizing...'
end
