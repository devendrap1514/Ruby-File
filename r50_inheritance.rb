class Box
    def initialize(w, h)
        @width, @height = w, h
    end
    def getArea()
        @width * @height
    end
end

class BigBox < Box
    def printArea()
        @area = getArea()
        puts("Big box area is : #{@area}")
    end
end

box = BigBox.new(10, 20)
box.printArea()

b = Box.new(4,5)
puts(b.getArea())