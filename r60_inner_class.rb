class Student
    class StudentBio
        def printStudentBio()
            puts("StudentBio")
        end
    end
end


s = Student::StudentBio.new()
s.printStudentBio()