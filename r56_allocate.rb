# Create Object Using Allocate
# There may be a situation when you want to create an object without calling its constructor initialize i.e. using new method, in such case you can call allocate, which will create an uninitialized object for you as in the following example −

class Box
    def initialize(w, h)
        @width, @height = w, h
    end
    def getArea()
        # width and height not have data type so error occur
        # undefined method `*' for nil:NilClass (NoMethodError)
        @width * @height
    end
end


b1 = Box.new(4,5)
puts(b1.getArea())

b2 = Box.allocate
puts(b2.getArea())