class Student
    @id
    @name
    def initialize(id, name)
        @id = id
        @name = name
    end

    def display_student_details()
        puts("#@id, #@name")        
    end
end


s1 = Student.new(33, "Devendra")
s2 = Student.new(34, "Hariom")

s1.display_student_details()
s2.display_student_details()


