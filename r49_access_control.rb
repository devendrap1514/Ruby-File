# Ruby gives you three levels of protection at instance methods level, which may be public, private, or protected. Ruby does not apply any access control over instance and class variables.

#     Public Methods − Public methods can be called by anyone. Methods are public by default except for initialize, which is always private.

#     Private Methods − Private methods cannot be accessed, or even viewed from outside the class. Only the class methods can access private members.

#     Protected Methods − A protected method can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.


# define a class
class Box
   # constructor method
   def initialize(w,h)
      setHeight(h)
      setWidth(w)
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   def getWidth
      @width
   end
   def getHeight
      @height
   end

   def setWidth(w)
      @width = w
   end
   def setHeight(h)
      @height = h
   end
   
   # make them private
   private :setWidth, :setHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()

# puts(box.width)