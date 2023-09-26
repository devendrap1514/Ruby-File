class Box
    @width
    @height
    def initialize(w, h)
        @width = w
        @height = h
    end
    def setWidth(width)
        @width = width
    end
    def setHeight(height)
        @height = height
    end
end

b1 = Box.new(5, 9)
b1.freeze()
if b1.frozen?()
    puts("freeze")
else
    puts("not freeze")
end


# error
# b1.setWidth(2)
# b1.setHeight(7)