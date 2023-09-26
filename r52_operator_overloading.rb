class Box
    attr_accessor :width, :height
    def initialize(w,h)     # Initialize the width and height
       @width, @height = w, h
    end
 
    def +(other)       # Define + to do vector addition
       Box.new(self.width + other.width, self.height + other.height)
    end
 
    def -(other)            # Define unary minus to negate width and height
       Box.new(self.width - other.width, self.height - other.height)
    end
 
    def *(scalar)           # To perform scalar multiplication
       Box.new(@width*scalar, @height*scalar)
    end

    def printData()
        puts(width, height)
    end
 end
b1 = Box.new(4,6)
b2 = Box.new(3,9)
b = b1+b2
temp = b1*5

b.printData()
temp.printData()