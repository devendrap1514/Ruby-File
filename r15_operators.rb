n1 = 10
n2 = 5
puts(n1+n2)
puts(n1-n2)
puts(n1*n2)
puts(n1/n2)
puts(n1%n2)
puts(n1**n2)

puts(n1 == n2)
puts(n1 != n2)
puts(n1 > n2)
puts(n1 < n2)

puts(n1 >= n2)
puts(n1 <= n2)

# return 0 if both are equal
# return 1 if first operand is greater
# return -1 if first operant is smaller
puts(n1 <=> n2)

puts((1..10) === 11)


# True if the receiver and argument have same value but different type
# When comparing numbers of different types (e.g., integer and float), if their numeric value is the same, == will return true.
puts(1 == 1.0)
puts(1 == "1")

# True if the receiver and argument have same type and equal value
puts(1.eql?(1.0))


a = "xyz"
b = "xyx"
a.object_id  # Output: => 20139460
b.object_id  # Output :=> 19972120
puts(a.equal? b)  # Output: => false

a = "string"
b = a
a.object_id  # Output: => 18637360
b.object_id  # Output: => 18637360
puts(a.equal? b)  # Output: => true

# Case equality operator: ===

String === "zen"  # Output: => true
Range === (1..2)   # Output: => true
Array === [1,2,3]   # Output: => true
Integer === 2   # Output: => true

("a".."d").each do |ch|
    puts(ch)
end

(1..4) === 3  # Output: => true
(1..4) === 2.345 # Output: => true
(1..4) === 6  # Output: => false("a".."d") === "c" # Output: => true
("a".."d") === "e" # Output: => false

a = 5
b = 4
a += b
puts(a)

a = 5
b = 4
a -= b
puts(a)

a = 5
b = 4
a *= b
puts(a)

a = 5
b = 4
a /= b
puts(a)

a = 5
b = 4
a %= b
puts(a)

a = 5
b = 4
a **= b
puts(a)


# Ruby Parallel Assignment

num1, num2, num3 = 1, 2, 3
puts(num1, num2, num3)

# Ruby Bitwise Operators

# a    =  0011 1100
# b    =  0000 1101
# -----------------
# a&b  =  0000 1100
# a|b  =  0011 1101
# a^b  =  0011 0001
# ~a   =  1100 0011

a = 10  #1010
b = 4   #0100 AND  
#output #0000
# 1 1 = 1
# 0 1 = 0
# 1 0 = 0
# 0 0 = 0
puts(a&b)

#output #1110
# 1 1 = 1
# 0 1 = 1
# 1 0 = 1
# 0 0 = 0
puts(a|b)

#output #1110
# 1 1 = 0
# 0 1 = 1
# 1 0 = 1
# 0 0 = 0
puts(a^b)

puts(~a)

puts(a<<2)

puts(a>>2)

# Ruby Logical Operators

a = true
b = false

puts(a && b)
puts(a || b)

# Why Space is mandotory in "or" or "and"
puts (a and b)
puts (a or b)

# Ruby Ternary Operator

puts(5 > 6 ? "Yes" : "No")

# Ruby Range Operators
(1..10) # creates a range from 1 to 10
(1...10)  # creates a range from 1 to 9. last value is exclusive


unAssignVar = nil
assignVar = 5

def fun()

end

puts(defined? assignVar)
puts(defined? fun())

class Student
    # STUDENT_COUNT = 0
    def increaseStudentCount()
        # ::STUDENT_COUNT += 1
    end
end

s = Student.new()
# puts(Student::STUDENT_COUNT)
s.increaseStudentCount()
# puts(Student::STUDENT_COUNT)
