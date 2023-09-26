# Ruby .call Method

# In Ruby, a proc and a lambda can be called directly using the .call method.

proc_test = Proc.new { puts "I am the proc method!" }
lambda_test = lambda { puts "I am the lambda method!"}

proc_test.call # => I am the proc method!
lambda_test.call # => I am the lambda method!




# Ruby lambda

# In Ruby, a lambda is an object similar to a proc. Unlike a proc, a lambda requires a specific number of arguments passed to it, and it returns to its calling method rather than returning immediately.

def proc_demo_method
    proc_demo = Proc.new { return "Only I print!" }
    proc_demo.call
    "But what about me?" # Never reached
end

puts proc_demo_method 
# Output 
# Only I print!

# (Notice that the proc breaks out of the method when it returns the value.)

def lambda_demo_method
  lambda_demo = lambda { return "Will I print?" }
  lambda_demo.call
  "Sorry - it's me that's printed."
end

puts lambda_demo_method





# Ruby .collect Method

# In Ruby, the .collect array method takes a block and applies the expression in the block to every element of an array.


first_arr = [3, 4, 5]
second_arr = first_arr.collect { |num| num * 5 }

print second_arr, "\n"


# Ruby yield Keyword

# In Ruby, the yield keyword is used to transfer control from a method to a block and then back to the method once executed.

def yield_test
    puts "I'm inside the method."
    yield
    puts "I'm also inside the method."
    yield
end

yield_test { puts ">>> I'm butting into the method!" }


def yieldTest
    for i in (0..5)
        yield i
    end
end

yieldTest{ |i| print(i, ", ")}

puts()


# Ruby proc

# In Ruby, a proc is an instance of the Proc class and is similar to a block. As opposed to a block, a proc is a Ruby object which can be stored in a variable and therefore reused many times throughout a program.

square = Proc.new { |x| x ** 2 }
# A proc is defined by calling Proc.new followed by a block.

# [2, 4, 6].collect!(&square)square
# When passing a proc to a method, an & is used to convert the proc into a block.

puts ([2, 4, 6].collect!(&square))
puts ([2, 4, 6].collect {|x| x ** 2 })
# => [4, 16, 36]


# Proc and lambda are both the proc class object
puts(Proc.new { return "Only I print!" }.class)
puts(lambda { return "Only I print!" }.class)


puts(lambda {|num| num ** 2}.call(4))
square_lambda = lambda{|num| num**2}
puts(square.call(4))

puts ([2, 4, 6].collect!(&square_lambda))
# => [4, 16, 36]
