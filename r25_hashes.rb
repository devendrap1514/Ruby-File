# Creating Hashes

# When you access any key in a hash that has a default value, if the key or value doesn't exist, accessing the hash will return the default value −
months = Hash.new("no key found")

# students = Hash.new("no data")
# puts "#{students[:email]}"
# # no data
# # or
# students = Hash.new
# students.default = "no data"
# puts "#{students[:email]}"
# # no data

# months["1"] = "January"
# Alternatively
months.store("1", "January")
months["2"] = "February"
months["3"] = "March"
months["4"] = "April"
months["5"] = "May"
months["6"] = "June"
months["7"] = "July"
months["8"] = "August"
months["9"] = "September"
months["10"] = "October"
months["11"] = "November"
months["12"] = "December"

puts(months["1"])  # print value of corresponding key
puts(months["13"]) # print "no key found" because no value is found that corresponding key


# Best way to create a hash is this
months = Hash["1" => "Sunday", "2" => "Monday", "3" => "Tuesday", "4" => "Wednesday", "5" => "Thursday", "6" => "Friday", "7" => "Saturday"]

puts(months)
puts(months["1"])

months = Hash["1": "Sunday", "2": "Monday", "3": "Tuesday", "4": "Wednesday", "5": "Thursday", "6": "Friday", "7": "Saturday"]

puts(months)

# Array only create if ":" colon is close to key without space
# months = {"1" : "Sunday", "2" : "Monday", "3" : "Tuesday", "4" : "Wednesday", "5" : "Thursday", "6" : "Friday", "7" : "Saturday"}

puts(months)

p Hash["x", 30, "y", 19]
p Hash["x" => 30, "y" => 19]


days = {:"1" => "Monday", :"2" => "Tuesday"}
puts(days[:"1"])


# The Hash.new() creates a single default object for every key. That’s why by altering it for one key changes for other keys as well. For example, when we change the default value for the key id, it affects other unassigned key’s default values. In this case, name.

students = Hash.new("no data")
students[:email] = "john@col.com"
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# no data
puts "#{students[:name]}"
# no data

students[:id].upcase!
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# NO DATA
puts "#{students[:name]}"
# NO DATA

# If the above code behavior is not desired, you can use Hash.new {|hash, key| block } instead. This method creates a default object each time for different keys.

students = Hash.new {|hash, key| hash[key] = "no data" }
students[:email] = "john@col.com"
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# no data
puts "#{students[:name]}"
# no data

students[:id].upcase!
puts "#{students[:email]}"
# john@col.com
puts "#{students[:id]}"
# NO DATA
puts "#{students[:name]}"
# no data



tags = { c: 20, b: 10, a: 30 }
tags.each {|key, value| puts "#{key} is #{value}" }
print(tags.sort(),"\n")
print(tags.sort_by{|key, value| value})
puts()

print(tags.has_key?(:d), "\n")

# below line not working
tags.delete("b")
print(tags, "\n")

tags.delete(:b)
print(tags, "\n")
# or
tags.delete(:"b")
print(tags, "\n")



# Enough with the basics and essentials. Let’s dive into the practical applications of ruby hash. The problem we are trying to solve is to get the frequency from a list of numbers. The first example deals with the built-in method each_with_object.

numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
hsh = numbers.each_with_object(Hash.new(0)) { |number, hash|
	hash[number] += 1
}

print(hsh, "\n")

# For the second example, we are using the built-in method each.

numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
freq_hash = Hash.new(0)
numbers.each { |number| freq_hash[number] += 1 }
puts "#{freq_hash}"

# Good news if you are using Ruby 2.7+. It has a built-in method that solves this specific problem.

numbers = [1, 1, 1, 2, 4, 65, 55, 54, 55]
print(numbers.tally, "\n")

evenHash = freq_hash.delete_if { |key,value| key%2 != 0 }
print(evenHash, "\n")

# hash.index(value)
# Returns the key for the given value in hash, nil if no matching value is found.

# Depricate
# freq_hash.index(3)

print(freq_hash.to_a)

puts()