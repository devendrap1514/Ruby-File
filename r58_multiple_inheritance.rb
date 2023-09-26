module A
    def printA()
        puts("I am A")
    end
end

module B
    def printB()
        puts("I am B")
    end
end

class C
    include A
    include B
    def printC()
        puts("I am C")
    end
end


c = C.new()
c.printA()
c.printB()
c.printC()