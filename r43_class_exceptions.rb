class FileSaveError < StandardError
    attr_reader :reason
    def initialize(reason)
       @reason = reason
    end
 end

 File.open("r43.txt", "w") do |file|
    begin
       # Write out the data ...
       raise FileSaveError.new("Hello World")
    rescue Exception => e
       # Something went wrong!
       puts(e.reason)
    end
    end