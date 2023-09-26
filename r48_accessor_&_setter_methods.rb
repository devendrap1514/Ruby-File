class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end

   def getHeight
      @height
   end   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
   def to_s()
      op = String.new()
      instance_variables.each do |var|
         op += "#{var}:#{instance_variable_get(var)}, "
      end
      op.strip!.chop!()
      return op
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

puts(box.to_s())