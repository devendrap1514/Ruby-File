PROGRAM_NAME = "CONSTANT"

puts("#{PROGRAM_NAME}")


class Sample
    CLASS_NAME = "Sample"
    def printClassName()
        puts ("Class name is #{CLASS_NAME}")
    end
end

s = Sample.new()
s.printClassName()