
# simple method
# When a method is defined outside of the class definition, the method is marked as private by default.

# def add(num1, num2)
#     puts(num1+num2)
# end

# add(5,7)


# return method
def add(num1, num2)
    return num1 + num2
end

puts(add(5,6))
puts(add 5,6)

# Every method in Ruby returns a value by default. 
# This returned value will be the value of the last statement.
def add(num1, num2)
    num1 + num2
end

puts(add(5,6))
puts(add 5,6)


# multiple value return by method

def sumAndGreater(num1, num2)
    return num1+num2, num1 > num2
end

sum, isFirstGreater = (sumAndGreater(6,4))

puts(sum, isFirstGreater)



# Variable sized parameter

# def sum(*param)
#     sum = 0
#     for num in param do
#         sum += num
#     end
#     return sum
# end

def sum(*param)
    sum = 0
    for i in (0...(param.length)) do
        sum += param[i]
    end
    return sum
end

puts(sum(1, 2, 6))



# Class Methods
# the methods defined in the class definition are marked as public by default.

class Account
    # we can access the below method only with the help of an object.
    def readingCharge()
    end
    # We can access the below method there is no need to create objects of the Class as we can directly access it
    # Class Method or Static Method
    def Account.printData()
    end
end

puts(Account.printData())
# To access this method, you need not create objects of the class Accounts.

class Student
    def _get()
        "Okay"
    end
    alias getStudnetInfo _get
end

s = Student.new()
puts(s.getStudnetInfo())


class User
    def fullname
      'John Doe'
    end

    # Ruby provides an "alias" keyword to deal with method and attribute aliases

    alias username fullname
    alias name     username
   
    #  aThe "alias_method" method shares the same behavior as the alias keyword but it complies to the method syntax
    alias_method :username, :fullname
    alias_method :name,    :username
  end
  
  u = User.new
  
  p u.fullname()
  p u.username()
  p u.name()


#   Ruby undef Statement

undef sum

puts(sum(1,3,4))