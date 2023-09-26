# Syntax
# aFile = File.new("filename", "mode")
#    # ... process the file
# aFile.close


# You can use File.open method to create a new file object and assign that file object to a file. However, there is one difference in between File.open and File.new methods. The difference is that the File.open method can be associated with a block, whereas you cannot do the same using the File.new method.

# File.open("filename", "mode") do |aFile|
#     # ... process the file
# end


# check whether file is available or not
# Read-only mode. The file pointer is placed at the beginning of the file. This is the default mode.

# Read Text File
if File.exists?("r31.txt")
    aFile = File.new("r31.txt", "r")
    content = aFile.sysread(20)
    puts content
    aFile.close()
else
    puts("Enable to find file")
end


#  Read Image File
if File.exists?("/home/hp/Pictures/logo.svg")
    aFile = File.new("/home/hp/Pictures/logo.svg", "r")
    content = aFile.sysread(20)
    puts content
    aFile.close()
else
    puts("Enable to find file")
end