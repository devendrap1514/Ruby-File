# Ruby arrays are ordered, integer-indexed collections of any object.

emptyArr = Array.new
puts(emptyArr)

# You can set the size of an array at the time of creating array
arr = Array.new(5)
print(arr,"\n")

# print the size of the array
puts(emptyArr.length)
puts(arr.size)

# asign value while declaration
arr = Array.new(4, -1)  # align -1 to all index
print(arr, "\n")

# asign different value while declaration
# i receiver param from 0->size
# i*2 return as value
# work like block
arr = Array.new(5){|i| i*2}
print(arr, "\n")


# align value to array while declaration


arr = Array.[](1,2,3,4,5)
print(arr, "\n")

arr = Array[2,4,6,8,10]
print(arr, "\n")

# the method takes a range as an argument to create an array of digits
arr = Array(1..50)
print(arr, "\n")


# Array Build-In methods

arr = Array(1..10)
puts(arr.at(4))
print(arr.at(19))  # not give any error, just not return anything


arr1 = Array[1,3,5,7,9]
arr2 = Array[2,3,7,10]

# Work like intersection
print(arr1 & arr2, "\n")

# return arr copy of 4 times
# Returns a new array built by concatenating the int copies of self.
print(arr1 * 4, "\n")

# converting array to string with join "string"
# With a String argument, equivalent to self.join(str
print((arr1 * "4"), "\n")
print((arr1 * "4").class, "\n")



arr1 = Array[1,3,5,7,9]
arr2 = Array[2,3,7,10]

print(arr1+arr2, "\n")
print(arr1-arr2, "\n")


# Returns a new array by joining array with other_array, removing duplicates.
print(arr1 | arr2, "\n")

# Pushes the given object onto the end of array. This expression returns the array itself, so several appends may be chained together.

# arr2 become element of arr1 [1,2,3,[4,5,6]]
print(arr1 << arr2, "\n")

print(arr.slice(2,5), "\n")
print(arr[2,5], "\n")

# .take
# The .take method returns the first n elements of the array:
print(arr.take(3), "\n")

# .drop
# The .drop method returns the elements after n elements of the array:
print(arr.drop(5), "\n")

# .pop
# The .pop method will "permantently" remove the last element of an array:
print(arr.pop(), "\n")

# .shift
# The .shift method will "permantently" remove the first element of an array and return this element:
print(arr.shift(), "\n")

# .push
# The .push method will allow you to add an element to the end of an array:
print(arr.push(10), "\n")

# .unshift
# The .unshift method will allow you to add an element to the beginning of an array:
print(arr.unshift(1), "\n")

# .delete
# The .delete method removes a specified element from an array "permanently":
print(arr.delete(5), "\n")

# .delete_at
# The .delete_at method allows you to permanently remove an element of an array at a specified index:
print(arr.delete_at(2), "\n")

# .insert
# The .insert method allows you to insert an element of an array at a specified index:
print(arr.insert(2, 3), "\n")

arr1 = [1,2,3]
arr2 = arr1  # arr2 contain copy arr1

arr1.push(4)
print(arr1, "\n", arr2, "\n")

# .select
# The .select method iterates over an array and returns a new array that includes any items that return true to the expression provided.

print(arr.select{|num| num%2 == 0}, "\n")

# .include?
# The include? method checks to see if the argument given is included in the array:
print(arr.include?(5), "\n")

arr1 = Array[1,3,5,7,9]
arr2 = Array[2,3,7,10]
arr = arr1 << arr2
print(arr, "\n")

# .flatten
# The flatten method can be used to take an array that contains nested arrays and create a one-dimensional array:
print(arr.flatten, "\n")

# .join
# The .join method returns a string of all the elements of the array separated by a separator parameter. If the separator parameter is nil, the method uses an empty string as a separator between strings.
print(arr.join(","), "\n")

arr.each do |num|
    print(num, " ")
end

puts()

multiplicationArr = arr.map{ |num| num * 2}

print(multiplicationArr, "\n")  # see what the difference

# .uniq
# The .uniq method takes in an array containing duplicate elements, and returns a copy of the array containing only unique elements—any duplicate elements are removed from the array.
arr = arr.flatten
print(arr.uniq, "\n")

# .concat
# The .concat method appends the elements from an array to the original array. The .concat method can take in multiple arrays as an argument, which will in turn append multiple arrays to the original array.

print(arr.concat([1,2,5,7,2], [7,4,12,5]), "\n")

# Find element in array
nums = [1,2,3,4,5]
puts(nums.include?(12))


puts([1,3,4,5,2,3,4,2,4].count(3))