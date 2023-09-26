$LOAD_PATH << '.'
# Below line is not working 
# require "arithmetic"

require_relative "arithmetic"


puts(Arithmetic.add(1,2,3,4,5))
puts(Arithmetic.mod(6,7))
puts(Arithmetic.subs(24, -45, 50))
puts(Arithmetic::PI)