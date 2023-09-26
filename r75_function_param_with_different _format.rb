def times_two(arg1)
    puts arg1 * 2
end

def sum(arg1, arg2)
    puts arg1 + arg2
end


puts times_two 5
puts times_two(5)
puts times_two (5)
puts sum 1, 2
puts sum(1, 2)
puts sum (1, 2)


# The first three lines of code will all print out 10, as expected.

# The next two lines of code will both print out 3, as expected.

# However, the last line of code (i.e., sum (1,2)) will result in the following:

# syntax error, unexpected ',', expecting ')'
# sum (1, 2)
#        ^

# The problem is the space between the method name and the open parenthesis. Because of the space, the Ruby parser thinks that (1, 2) is an expression that represents a single argument, but (1, 2) is not a valid Ruby expression, hence the error.

# Note that the problem does not occur with single argument methods (as shown with our timesTwo method above), since the single value is a valid expression (e.g., (5) is a valid expression which simply evaluates to 5).