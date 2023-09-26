module Student
    @id
    @name
    def initialize(id, name)
        @id = id
        @name = name
    end

    def getVariableValues()
        variables = {}
        instance_variables.each do |var|
            variables[var] = instance_variable_get(var)
        end
        variables
    end
end

class SkitmStudent
include Student
    @@totalNoOfStudent = 0
    def initialize(id, name)
        @@totalNoOfStudent += 1
        super(id, name)
    end
end


skitm = SkitmStudent.new(33, "Dev")
skitm2 = SkitmStudent.new(34, "H")

puts(skitm.getVariableValues())
puts(skitm2.getVariableValues())