puts('This is a simple Ruby string literal')
puts('Won\'t you read O\'Reilly\'s book?')



=begin
    
Expression Substitution

Expression substitution is a means of embedding the value of any Ruby 
expression into a string using #{ and } −

=end

x, y, z = 1.2, 13.1, 8.7

puts("The value of x is #{x}")
puts("The value of y is #{y}")
puts("The value of z is #{z}")


num = 5
puts(%<Hello 5,6,23!'>)
puts(%<The value of x is #{x}>)


# The modifiers %q and %Q
# The difference between %q and %Q is that the former %q does not perform string interpolation when converting the content to string, while the latter %Q does.
puts(%q<The value of x is #{x}>)
puts(%Q<The value of x is #{x}>)

# Print all file name in current folder
puts(%x!ls!)

# The modifier %w

# The modifier %w extracts the tokens from space-separated data and creates an array of strings. Consider the playground below

#Using %w
print %w<Fred Wilma Barney Betty Great Gazoo>
puts()


# String Methods -------------------------------------

str = "My self Devendra"
puts("str => #{str}")
puts("str length is #{str.length}")
puts("str is empty: #{str.empty?}")
# original string not affected
puts("str in lowercase is #{str.downcase}")
puts("str in upcase is #{str.upcase}")
puts("count of \"e\" in str => #{str.count('e')}")


# change original str and return modified str
str.insert(str.length, " Patidar")
puts(%<" Patidar" add to str =\> #{str}>)

puts(%<upper to lower, lower to upper =\>  #{str.swapcase}>)

#  if we use .capitalize! is changes made the place of original string
puts("make the first letter in a string uppercase => #{str.downcase.capitalize}")

puts("Reverse str => #{str.reverse}")

# split string, default delimeter is " " white space
puts("Split the str => #{str.split}")
# use delimeter to split string
puts("Split the str => #{str.split(',')}")

# Chop

# The .chop method removes the last character of the string.
puts("remove last element from str using chop => #{str.chop}")


# change original str and return modified str
str.insert(str.length, "-")
puts(%<"-" add to str =\> #{str}>)


# --------------------- "!" is used to changes are made in place

# A new string is returned, unless you use the .chop! method which mutates the original string.
puts("remove last element from str using chop => #{str.chop!}")

# Strip

# The .strip method removes the leading and trailing whitespace on strings, 
# including tabs, newlines, and carriage returns (\t, \n, \r).

puts("remove whitespace from starting and ending from str => #{str.strip}")

# types of strip
# .lstrip
# .rstrip

# Chomp

# The .chomp method removes the last character in a string, only if it’s a carriage return or newline (\r, \n).

# This method is commonly used with the gets command to remove returns from user input.

str = str.insert(str.length,"\n")
puts("Remove carriage => #{str}")


# To Integer

# The .to_i method converts a string to an integer.

numStr = "45"
print(%<"#{numStr}" convert to interger =\> #{numStr.to_i}>)

puts()



print(%<Change "Devendra" to "Dev" -\> #{str.gsub("Devendra", "Dev")}>)


# concatenation

puts("Hello" + " " + "World")
puts("Hello" << " " << "World")
puts("Hello".concat(" ").concat("World"))

# Index

# The index method returns the index position of the first occurrence of the substring or regular expression pattern match in a string. If there is no match found, nil is returned.

puts("find \"self\" in str => #{str.index("self")}")

# Removes string content.
str.clear()
puts(str)

str = "Devendra"

# below line is no understand
# puts(str % "5")

#  Generate 5 times "str"
puts("D" * 5)


# pattern match in str using /pattern/ =~ str
str = "Hello"
puts(/llo/ =~ str)


str = "Devendra"
puts(str.delete("e"))

str = "Devendra"
puts(str.delete("endra", "^ndr"))

# return 0 if param is match without "up" or "down" case,
# return 1 if param is substring of str
# return -1 if string is not match
puts(str.casecmp("Devendra"))

str = "Hello"
# center the string using width
# If the specified width is greater than the length of the given string, then this method will return a new string of the specified width with the given string centered and padded otherwise it returns only given string.
puts(str.center(10))

# add some value to starting and ending using second parameter
puts(str.center(15, "123"))

puts(str.slice(0, 3))

puts(str)
puts(str.tr("Hll", "D11"))

puts('abcde'.tr('bda', '123'))
#=> "31c2e"

puts 'abcde'.tr('bcd', '123')
#=> "a123e"

puts 'abcde'.gsub("bde", '123')
#=> "abcde"

puts 'abcde'.gsub("bde", '123')
#=> "a123e"

puts 'abcde'.gsub(/b.d/, '123')
#=> "a123e"

# The str.count takes one or more sets of characters as parameters. After that, we take the intersection of these sets to get the final characters set. Finally, this set is used to count the characters in str.
puts("abcdef".count("a-c", "c-f"))
puts("abcdef".count("a-d", "c-f"))

# We can use it for counting multiple characters, so let's count the number of vowels.

puts("abcdeUUU".downcase.count("aeiou"))

# How about the consonants? Ruby’s got you covered! The ^ symbol is used to negate the characters.

puts("abcdeUUU".downcase.count("^aeiou"))



# reduce space if it have two whitespace at one place
# we can give any parameter to reduce
puts("Hello     World".squeeze(' '))