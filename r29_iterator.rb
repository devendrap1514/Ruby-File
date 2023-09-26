# Ruby each Iterator

# Ruby collect Iterator

a = [1,2,3,4,5]
b = Array.new
b = a.collect
puts(b)

# NOTE − The collect method is not the right way to do copying between arrays. There is another method called a clone, which should be used to copy one array into another array.

# You normally use the collect method when you want to do something with each of the values to get the new array. For example, this code produces an array b containing 10 times each value in a.

# select return 'num' when condition true
oddArr = a.select { |num| num%2 == 1 }
print(oddArr, "\n")

# collect return condition output
oddArr = a.collect{ |num| num%2 == 1 }
print(oddArr, "\n")

oddArr = a.collect{ |num| num*2 }
print(oddArr, "\n")