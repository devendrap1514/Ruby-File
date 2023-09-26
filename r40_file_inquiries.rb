# The following command tests whether a file exists before opening it −
File.open("file.rb") if File::exists?( "file.rb" )


# The following command inquire whether the file is really a file −
# This returns either true or false
puts(File.file?( "text.txt" ))

# The following command finds out if the given file name is a directory −
# a directory
puts File::directory?( "/usr/local/bin" ) # => true

# a file
puts File::directory?( "file.rb" ) # => false

# The following command finds whether the file is readable, writable or executable −
puts File.readable?( "test.txt" )   # => true
puts File.writable?( "test.txt" )   # => true
puts File.executable?( "test.txt" ) # => false

# The following command finds whether the file has zero size or not −
puts "file empty => #{File.zero?( "test.txt" )}"      # => true

# The following command returns size of the file − if file exist
puts File.size?( "text.txt" )     # => 1002

# The following command can be used to find out a type of file 
# − error if file not exist
# File::ftype( "test.txt" )     # => file

# The following command can be used to find when a file was created, modified, or last accessed −
# − error if file not exist
# File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
# File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
# File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008

