class Box
# print class information
    def Box.printClassInfo()
        # puts "Type of self = #{self.type}" # self.type not working
        puts "Type of self = #{self.class}"
        puts "Name of self = #{self.name}"
    end
end

Box.printClassInfo()