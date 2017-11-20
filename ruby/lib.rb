require 'pathname'

home = Pathname.new('~')
foo = home.join('foo.txt')

p foo.expand_path
