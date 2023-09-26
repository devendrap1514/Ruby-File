# https://www.rubyguides.com/2017/06/ruby-struct-and-openstruct/

Point = Struct.new(:width, :height)


a = Point.new(5,9)
b = Point.new(2,4)

puts(a.width, a.height)
puts(b.width, b.height)


c = Point.new(5,9)
puts(a == b)
puts(a == c)