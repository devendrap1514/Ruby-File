# Read-write mode. The file pointer will be at the beginning of the file

# check whether file is available or not

if File.exists?("r33_file_read_write.txt")
    file = File.new("r33_file_read_write.txt", "r+")

    file_data = file.sysread(20)
    puts(file_data)

    new_write_data = file.syswrite("Wow, new data is modified")
    puts(new_write_data)
    file.close()
else
    puts("File not found")
end