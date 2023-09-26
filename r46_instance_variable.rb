# Storing Data With Instance Variables
# Attribute Accessors
# Instance variables are private by default, that’s why we can’t get the title directly.

# There is nothing special about this, an attr_reader is a shortcut for writing an accessor method like this one:
# def author
#   @author
# end

# Because methods have access to instance variables they can return their value.

# There are other kinds of attribute accessors:

#     attr_reader (read-only)
#     attr_writer (write-only)
#     attr_accessor (read & write)

class Book
    attr_reader :title, :author
    def initialize(title, author)
        @title = title
        @author = author
        puts("You call param")
    end
    def printBookDeatils()
        hsh = {}
        instance_variables.each do |var|
            hsh[var.to_s] = instance_variable_get(var)
        end
        hsh
    end
end

book = Book.new("Meluha", "Mahesh")
puts(book.printBookDeatils())

hsh = {"Hello" => "World"}
puts(hsh)