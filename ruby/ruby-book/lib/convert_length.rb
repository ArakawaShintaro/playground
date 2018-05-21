require 'pry'

UNITS = { m: 1.00, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end

convert_length(10, from: :ft, to: :m)
