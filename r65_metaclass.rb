# Metaclasses

# Every object in Ruby has its own metaclass. It is somehow invisible to a developer, but it is there and you can use it very easily. Since our class Developer is essentially an object, it has its own metaclass. As an example let’s create an object of a class String and manipulate its metaclass:

# str = "Hello"
# def str.uppercase
#     self.upcase
# end
# puts(str.uppercase())


# Open Classes
# You can open any class and add new methods to it. For example, let’s open the String class and add a new method log on it.
# This is called monkey-patching, and it can cause problems if you redefine existing methods unintentionally. However, if you know what you are doing, monkey-patching can be very powerful.

class String
  def uppercaseclass
    self.upcase
  end
end

str = "   Hello   "
puts(str.uppercase())
puts(str.downcase())
puts(str.strip())