# The IO.readlines Method
# One of the IO class methods is IO.readlines. This method returns the contents of the file line by line. 


# Error if file not exist
file = IO.readlines("r38.txt")
# In this code, the variable arr is an array. Each line of the file input.txt will be an element in the array arr. Therefore, arr[0] will contain the first line, whereas arr[1] will contain the second line of the file.

puts(file)



# The IO.foreach Method
# This method also returns output line by line. The difference between the method foreach and the method readlines is that the method foreach is associated with a block.
IO.foreach("r38.txt"){|line| puts line}


# Renaming and Deleting Files
file = File.new("r38_dammy.txt","w")
file.close()
File.rename( "r38_dammy.txt", "r38_rename.txt" )
print("Enter anything to delete: ")
gets.chomp.to_i
File.delete("r38_rename.txt")