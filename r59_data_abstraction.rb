# https://www.geeksforgeeks.org/data-abstraction-in-ruby/

class Student
    private
    def giveData()
        return "Private"
    end
    public
    def printData()
        puts("public")
        puts(giveData())
    end

    # OR other way to specify access specifier
    # make them private
    private :giveData
    public :printData

end

s = Student.new()
s.printData()