# Write-only mode. Overwrites the file if the file exists. If the file does not exist, creates a new file for writing.
aFile = File.new("r32.txt", "w")
content = aFile.syswrite("ABCDEF")
puts content
aFile.close()