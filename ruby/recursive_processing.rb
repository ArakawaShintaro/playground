require 'pry'

def sum(arr)
  return 0 if arr.empty?
  arr_top_num = arr.shift
  arr_top_num + sum(arr)
end

sum([1,2,3,4])
