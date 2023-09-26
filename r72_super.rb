# A call to super invokes the parent method with the same arguments that were passed to the child method. An error will therefore occur if the arguments passed to the child method don’t match what the parent is expecting.

# A call to super() invokes the parent method without any arguments, as presumably expected. As always, being explicit in your code is a good thing

class A
    def print(a, b)
        puts(a, b)
    end
end


class B < A
    def print(a, b)
        # called super method with comming argument
        super
        # called super method with no argument
        super()
    end
end

b = B.new()
b.print(4,8)