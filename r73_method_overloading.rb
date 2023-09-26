# Ruby does not support method overloading

def sum(a, b)
    return a + b
end

def sum(a, b, c)
    return a + b + c
end

puts(sum(4,5))
puts(sum(4,5,6))