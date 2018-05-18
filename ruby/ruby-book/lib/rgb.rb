require 'pry'

def to_hex(red, blue, green)
  # それぞれ10進数に変換
  hex_red = red.to_s(16)
  hex_blue = blue.to_s(16)
  hex_green = green.to_s(16)

  #1文字だったら0を付与

  # #をつけて、上記の数字を文字列として結合する
  "##{hex_red}#{hex_blue}#{hex_green}"
end

p to_hex(0, 0, 0)
p to_hex(255, 255, 255)
p to_hex(4, 60, 120)

def to_ints(hex_rgb)
  rgb = []

  ints_red = hex_rgb[1..2].hex
  rgb << ints_red

  ints_blue = hex_rgb[3..4].hex
  rgb << ints_blue

  ints_green = hex_rgb[5..6].hex
  rgb << ints_green
  rgb
end

# def to_ints(hex_rgb)
#   ints_red = hex_rgb[1..2]
#   ints_blue = hex_rgb[3..4]
#   ints_green = hex_rgb[5..6]
#   [ints_red, ints_blue, ints_green].map do |s|
#     s.hex
#   end
# end

p to_ints('#000000')
p to_ints('#ffffff')
p to_ints('#043c78')

