# Write-only mode. The file pointer is at the end of the file if the file exists. That is, the file is in the append mode. If the file does not exist, it creates a new file for writing

file = File.new("r36.txt", "a+")

puts file.read
file.syswrite("Hello")
file.close()