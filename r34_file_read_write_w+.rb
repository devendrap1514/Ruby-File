# Read-write mode. Overwrites the existing file if the file exists. If the file does not exist, creates a new file for reading and writing

file = File.new("r34_file_read_write.txt", "w+")

# end of file reached (EOFError)
# give valid size, otherwise produce error
# file_data = file.sysread(20)
# puts(file_data)

new_write_data = file.syswrite("Wow, new data is modified")
puts(new_write_data)
file.close()