class Developer

    def self.backend
        "I am backend developer"
    end

    def frontend
        "I am frontend developer"
    end

end


p Developer.class # Class
p Class.superclass # Module
p Module.superclass # Object
p Object.superclass # BasicObject
p BasicObject.superclass # nil