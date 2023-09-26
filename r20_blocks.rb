def sayMyAge()
    # yield execute block that are passed when function called
    yield
end

sayMyAge{ puts("Ten") }
sayMyAge{ puts("Hello") }


def sayMyName()
    if block_given?
        yield 7
    else
        puts("No block given")
    end
end

sayMyName{ |n|  # yield return and we are received in block
    puts("My name is Aman", n)
}

sayMyName{  # yield return but we are not received in block
    puts("My Aman")
}

class Array
    def our_own_each
        puts(self)
        for i in self
            yield i
        end
    end
end

[1,2,3].our_own_each{ |n|
    puts(n*2)
}

(0..5).each { |i|
    puts(i)
}


def printValue(&block)
    block.call
end

printValue{
    puts("Hello World")
}

